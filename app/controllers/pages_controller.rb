class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home
  def home
    @dinos = Dino.all
  end
end
