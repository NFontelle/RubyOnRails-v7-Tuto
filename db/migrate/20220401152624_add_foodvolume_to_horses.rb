class AddFoodvolumeToHorses < ActiveRecord::Migration[7.0]
  def change
    add_column :horses, :foodvolume, :integer
  end
end
