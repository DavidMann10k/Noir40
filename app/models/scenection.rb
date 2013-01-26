class Scenection < ActiveRecord::Base
  attr_accessible :scene_id, :scenection_id, :direction

  belongs_to :scene
  belongs_to :adjacent, :class_name => "Scene"
end
