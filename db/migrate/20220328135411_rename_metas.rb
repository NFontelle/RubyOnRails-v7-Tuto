class RenameMetas < ActiveRecord::Migration[7.0]
  def change
    rename_table :metas, :meta
  end
end
