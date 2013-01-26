class AddDefaultsToUser < ActiveRecord::Migration
  def change
    change_column :users, :name, :string, :default => "", :null => false
    change_column :users, :admin, :boolean, :default => false, :null => false
  end
end
