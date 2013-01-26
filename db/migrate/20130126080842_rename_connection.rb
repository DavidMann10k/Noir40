class RenameConnection < ActiveRecord::Migration
  def change
    rename_table :connections, :scenections
    rename_column :scenections, :connection_id, :scenection_id
  end
end
