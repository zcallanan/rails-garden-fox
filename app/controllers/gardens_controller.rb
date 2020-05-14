class GardensController < ApplicationController
  before_action :set_garden, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index

    @gardens = policy_scope(garden_search.geocoded).order(updated_at: :desc)
    @min_price, @max_price = @gardens.map(&:price).minmax
    @size_options = [
      ['Small', '50_200'],
      ['Medium', '201_500'],
      ['Large', '501_1000'],
      ['X-Large', '1001_30000']
    ]
    @garden_type_options = ['Botanical',
      'Park',
      'Rooftop']


    @markers = @gardens.map do |garden|
      {
        lat: garden.latitude,
        lng: garden.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { garden: garden }),
        image_url: helpers.asset_url('point.svg')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @garden = Garden.new
    authorize @garden
  end

  def create
    @garden = Garden.new(garden_params)
    @garden.user = current_user
    authorize @garden

    respond_to do |format|
      if @garden.save
        format.html { redirect_to garden_path(params[:id]), notice: 'Garden was successfully created.' }
        format.json { render :show, status: :created, location: @garden }
      else
        format.html { render :new }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
  end

  def edit; end

  def update
    respond_to do |format|
      if @garden.update(garden_params)
        format.html { redirect_to @garden, notice: 'Garden was successfully updated.' }
        format.json { render :show, status: :ok, location: @garden }
      else
        format.html { render :edit }
        format.json { render json: @garden.errors, status: :unprocessable_entity }
      end
    end
  end

  end

  def destroy
    @garden.destroy
    respond_to do |format|
      format.html { redirect_to gardems_url, notice: 'Garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
    authorize @garden
  end

  def garden_params
    params.require(:garden).permit(params[:photo, :name, :description, :address, :price, :house_rules, :filter_categories, :size, :capacity, :garden_type, :availability, :host_id])
  end

  def sizes
    return nil if params[:size].blank?

    # convert to array of ranges
    Range.new(*params[:size].split('_').map(&:to_i))
  end

  def garden_search
    GardenSearchService.call(
      address: params[:address],
      capacity: params[:capacity],
      size: sizes,
      garden_type: params[:garden_type],
      min_price: params[:min_price],
      max_price: params[:max_price]
    )
  end

end
