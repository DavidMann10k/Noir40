class AddImageToSceneObject < ActiveRecord::Migration
  def self.up
    add_attachment :scene_objects, :image
  end

  def self.down
    remove_attachment :scene_objects, :image
  end
end
