class AddKifeGunToUser < ActiveRecord::Migration
  def change
    add_column :users, :knife, :boolean
    add_column :users, :gun, :boolean
  end
end
