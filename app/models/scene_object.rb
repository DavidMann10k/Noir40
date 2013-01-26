class SceneObject < ActiveRecord::Base
  attr_accessible :name, :scene_id, :obtainable, :location
end
