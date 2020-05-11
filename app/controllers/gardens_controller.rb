class GardensController < ApplicationController
  before_action :set_garden, only: %i[show edit update destroy]

  def index
    @gardens = Garden.all
  end

  def show; end

  def new
    @garden = Garden.new
  end

  def create
    @garden = Garden.new(garden_params)
    if @garden.save
      redirect_to garden_path(params[:id])
    else
      render :new
    end
  end

  def edit; end

  def update
    @garden.update(garden_params)
    if @garden.save
      redirect_to garden_path(params[:id])
    else
      render :new
    end

  end

  def destroy
    @garden.destroy

    redirect_to gardens_path
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end

  def garden_params
    params.require(:garden).permit(params[:description, :location, :price, :house_rules, :filter_categories, :size, :capacity, :type, :availability, :host_id])
  end
end
