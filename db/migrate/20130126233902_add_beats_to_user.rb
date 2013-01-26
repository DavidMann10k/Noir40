class AddBeatsToUser < ActiveRecord::Migration
  def change
    add_column :users, :beats, :integer
  end
end
