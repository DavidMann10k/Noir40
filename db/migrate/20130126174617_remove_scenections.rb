class RemoveScenections < ActiveRecord::Migration
  def change
    drop_table :scenections
  end
end
