class RenameScenectionId < ActiveRecord::Migration
  def change
    rename_column :scenections, :scenection_id, :adjacent_id
  end
end
