class UserObjectState < ActiveRecord::Base
  attr_accessible :scene_object_id, :user_id, :visible

  belongs_to :user
  belongs_to :scene_object
end
