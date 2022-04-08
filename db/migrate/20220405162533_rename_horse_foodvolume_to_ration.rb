class RenameHorseFoodvolumeToRation < ActiveRecord::Migration[7.0]
  def change
    change_table :horses do |t|
      t.rename :foodvolume, :ration
    end
  end
end
