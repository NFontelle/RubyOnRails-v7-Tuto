class ChangeExercisesTypeToDiscipline < ActiveRecord::Migration[7.0]
  def change
    rename_column :exercises, :type, :discipline 
  end
end
