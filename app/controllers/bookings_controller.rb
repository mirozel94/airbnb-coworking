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
    # @booking.price = Booking.compute_price(params[:daterange], params[:people].to_i, @space.price).round(0)
    # @booking.date = params[:daterange]
    if @booking.save
      redirect_to space_bookings_path, notice: "new pasture created, meuh"
    else
      render 'spaces/show'
    end
  end

  def destroy
    @destroy_booking = Booking.find(params[:id])
    @destroy_booking.destroy
    redirect_to space_bookings_path, notice: "pasture deleted, meeeuh"
  end

  def booking_params
    params.require(:booking).permit(:date, :status, :price, :daterange)
  end

end
