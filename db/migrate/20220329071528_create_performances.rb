class CreatePerformances < ActiveRecord::Migration[7.0]
  def change
    create_table :performances do |t|
      t.string :type
      t.string :event
      t.string :rank
      t.text :observation

      t.timestamps
    end
  end
end
