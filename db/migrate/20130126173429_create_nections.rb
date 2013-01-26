class CreateNections < ActiveRecord::Migration
  def self.up
    create_table :nections do |t|
      t.integer :scene_id
      t.integer :adjacent_id
      t.string :direction
      t.timestamps
    end
  end

  def self.down
    drop_table :nections
  end
end
