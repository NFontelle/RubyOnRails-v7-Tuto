class AddBreedToHorses < ActiveRecord::Migration[7.0]
  def change
    add_column :horses, :breed, :string
  end
end
