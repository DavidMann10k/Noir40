class Way < ActiveRecord::Base
  attr_accessible :scene_id, :connection_id, :direction

  belongs_to :scene
  belongs_to :adjacent, :class_name => "Scene"
end
