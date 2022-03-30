class RemoveVolumeFromFood < ActiveRecord::Migration[7.0]
  def change
    remove_column :foods, :volume
  end
end
