class CreateHorsesExercisesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :horses, :exercises do |t|
      t.index [:horse_id, :exercise_id]
      t.index [:exercise_id, :horse_id]
    end
  end
end
