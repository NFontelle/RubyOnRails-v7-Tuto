class CreateMeta < ActiveRecord::Migration[7.0]
  def change
    create_table :metas do |t|
      t.string :name
      t.references :mettable, polymorphic: true, index: true
    end
  end
end
