class CreateDinos < ActiveRecord::Migration[6.1]
  def change
    create_table :dinos do |t|
      t.string :name
      t.string :specie
      t.integer :price
      t.string :description
      t.string :place
      t.string :characteristic
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
