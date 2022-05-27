class Owner::DinosController < ApplicationController


  def index
    @my_dinos = Dino.where(user: current_user)
  end


  def new
    @dino = Dino.new
  end

  def create
    @dino = Dino.new(dino_params)
    @dino.user = current_user

    if @dino.save
      redirect_to owner_dinos_path, notice: 'Dino was successfully created.'
    else
      render "owner/dinos_path"
    end
  end

  def destroy
  end


  private

  def dino_params
    params.require(:dino).permit(:name, :specie, :characteristic, :price, :description, :place, :photo)
  end

end
