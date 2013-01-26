class CreateSceneObjects < ActiveRecord::Migration
  def self.up
    create_table :scene_objects do |t|
      t.string :name
      t.integer :scene_id
      t.boolean :obtainable
      t.string :location
      t.timestamps
    end
  end

  def self.down
    drop_table :scene_objects
  end
end
