class Owner::BookingsController < ApplicationController
  before_action :set_booking, only: [:approve, :reject]

  def approve
    @booking.status = "validated"
    @booking.save
    redirect_to dashboard_path
  end

  def reject
    @booking.status = "rejected"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
