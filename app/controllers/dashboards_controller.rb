class DashboardsController < ApplicationController
  def show
    @bookings = Booking.all
    @my_bookings = []
    @bookings.each do |booking|
      if booking.user == current_user
         @my_bookings << booking
      end
    end
    return @my_bookings
  end





end
