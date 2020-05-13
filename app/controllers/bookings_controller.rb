class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :set_garden, only: %i[create]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.garden = @garden
    @booking.user = current_user
    rent_time = (end_date - start_date)/(600000 * 60 * 24)
    @booking.price = @garden.price * rent_time

    if @booking.save
      redirect_to garden_booking_path(@booking)
    end
  end

  def edit; end

  def update
    @booking.update(booking_params)

    if @booking.save
      redirect_to garden_booking_path(@booking)
    end
    # update occurs in index
  end

  def destroy
    if @booking.destroy
      redirect_to garden_bookings_path
    end
    # occurs in index
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(params[:start_date, :end_date])
  end

  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
end
