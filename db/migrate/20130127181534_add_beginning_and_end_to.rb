class AddBeginningAndEndTo < ActiveRecord::Migration
  def change
    add_column :scenes, :beginning, :boolean, :default => false
    add_column :scenes, :end, :boolean, :default => false
  end
end
