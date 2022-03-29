class ChangePerformancesTypeToDiscipline < ActiveRecord::Migration[7.0]
  def change
    rename_column :performances, :type, :discipline 
  end
end
