class CreateHorsesFoodsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :horses, :foods do |t|
      t.index [:horse_id, :food_id]
      t.index [:food_id, :horse_id]
    end
  end
end
