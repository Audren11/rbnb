class DashboardsController < ApplicationController
  def show
    @bookings = Booking.includes(:dino).where(dino: {user: current_user})
    @my_bookings = Booking.where(user: current_user)
    # @booking = Booking.last
    # @my_bookings = []
    # @bookings.each do |booking|
    #   if booking.user == current_user
    #     @my_bookings << booking
    #   end
    # end
    # return @my_bookings
  end

end
