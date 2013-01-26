class AddTimeZoneToUser < ActiveRecord::Migration
  def change
    add_column :users, :time_zone, :string, :default => "Central Standard Time", :null => false
  end
end
