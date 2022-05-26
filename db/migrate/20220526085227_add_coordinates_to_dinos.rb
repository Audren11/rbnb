class AddCoordinatesToDinos < ActiveRecord::Migration[6.1]
  def change
    add_column :dinos, :latitude, :float
    add_column :dinos, :longitude, :float
  end
end
