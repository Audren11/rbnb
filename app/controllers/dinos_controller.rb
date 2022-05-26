class DinosController < ApplicationController
  before_action :set_dino, only: [:show, :destroy]


  def index
    @dinos = Dino.all
    @markers = @dinos.geocoded.map do |dino|
      {
        lat: dino.latitude,
        lng: dino.longitude,
        info_window: render_to_string(partial: "info_window", locals: { dino: dino }),
        image_url: helpers.asset_url('pointer.png')
      }
    end
  end

  def new
    @dino = Dino.new
  end

  def create
    @dino = Dino.new(dino_params)

    if @dino.save
      redirect_to @dino, notice: 'Dino was successfully created.'
    else
      render :new
    end
  end

  def show
    @checkin = params['checkin_on']
    @checkout = params['checkout_on']
    @booking = Booking.new
  end


  def destroy
    @dino.destroy
    redirect_to root_path
  end

  private

  def set_dino
    @dino = Dino.find(params[:id])
  end

  def dino_params
    params.require(:dino).permit(:name, :specie, :characteristic, :price, :description, :place)
  end

end
