class CreateHorses < ActiveRecord::Migration[7.0]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :size
      t.integer :age
      t.string :sex

      t.timestamps
    end
  end
end
