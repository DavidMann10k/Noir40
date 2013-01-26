class Nection < ActiveRecord::Base
  attr_accessible :scene_id, :adjacent_id, :direction

  belongs_to :scene
  belongs_to :adjacent, :class_name => "Scene"
end
