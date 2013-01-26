class CreateScenes < ActiveRecord::Migration
  def self.up
    create_table :scenes do |t|
      t.string :name
      t.timestamps
    end
    add_attachment :scenes, :floor
    add_attachment :scenes, :left_wall
    add_attachment :scenes, :right_wall
  end

  def self.down
    drop_table :scenes
  end
end