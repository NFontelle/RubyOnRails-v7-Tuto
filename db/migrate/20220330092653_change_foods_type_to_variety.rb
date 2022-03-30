class ChangeFoodsTypeToVariety < ActiveRecord::Migration[7.0]
  def change
    rename_column :foods, :type, :Variety 
  end
end
