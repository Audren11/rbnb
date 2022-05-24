class DinosController < ApplicationController
  def index
    @dinos = Dino.all
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

  private

  def set_dino
    @dino = Dino.find(params[:id])
  end

  def dino_params
    params.require(:dino).permit(:name, :specie, :characteristic, :price, :description, :place)
  end
end
