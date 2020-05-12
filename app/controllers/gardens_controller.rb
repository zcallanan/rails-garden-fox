class GardensController < ApplicationController
  before_action :set_garden, only: %i[show edit update destroy]
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @gardens = policy_scope(Garden).order(updated_at: :desc)
  end

  def show; end

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
    params.require(:garden).permit(params[:description, :location, :price, :house_rules, :filter_categories, :size, :capacity, :type, :availability, :host_id])
  end
end
