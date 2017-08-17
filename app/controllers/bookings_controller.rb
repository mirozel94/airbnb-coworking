class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.space = @space
    @booking.user = current_user
    @booking.status = "pending"
    if @booking.save
      redirect_to space_bookings_path
    else
      render 'spaces/show'
    end
  end

  def booking_params
    params.require(:booking).permit(:date, :status)
  end

end
