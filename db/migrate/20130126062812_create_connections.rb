class CreateConnections < ActiveRecord::Migration
  def self.up
    create_table :connections do |t|
      t.integer :scene_id
      t.integer :connection_id
      t.string :direction
      t.timestamps
    end
  end

  def self.down
    drop_table :connections
  end
end
