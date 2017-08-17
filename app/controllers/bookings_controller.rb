class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = Booking.new
    @booking = Booking.find(params[:booking_id])


  end

  def review_params
    params.require(:booking).permit(:content)
  end

end
