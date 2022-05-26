class DinosController < ApplicationController
  before_action :set_dino, only: [:show, :destroy]


  def index
      if params[:query].present?
        sql_query = "name ILIKE :query OR specie ILIKE :query"
        @dinos = Dino.where(sql_query, query: "%#{params[:query]}%")
      else
        @dinos = Dino.all
      end
    #  @dinos = Dino.all
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
