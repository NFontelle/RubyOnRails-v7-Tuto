class ChangeFoodsVarietyName < ActiveRecord::Migration[7.0]
  def change
    rename_column :foods, :Variety , :variety
  end
end
