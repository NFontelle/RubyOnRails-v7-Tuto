class AddHorseToPerformances < ActiveRecord::Migration[7.0]
  def change
    add_reference :performances, :horse, foreign_key: true
  end
end
