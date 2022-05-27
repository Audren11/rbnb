class BookingsController < ApplicationController

  def create
    @dino = Dino.find(params[:dino_id])
    @booking = Booking.new(booking_params)
    @booking.dino = @dino
    @booking.user = current_user
    @booking.total_price = @dino.price * (((@booking.checkout_on - @booking.checkin_on) / 86_400) + 1) if @booking.checkin_on && @booking.checkout_on
    if @booking.save
      redirect_to dashboard_path
    else
      render "dinos/show"
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    # dashboard
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :checkin_on, :checkout_on, :total_price)
  end

end
