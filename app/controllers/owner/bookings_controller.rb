class Owner::BookingsController < ApplicationController
  def index
    @dinos = current_user.dinos
  end

  def approve
    
  end

  def reject

  end
end
