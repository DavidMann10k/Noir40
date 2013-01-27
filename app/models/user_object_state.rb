class UserObjectState < ActiveRecord::Base
  attr_accessible :scene_object_id, :user_id, :visible

  belongs_to :user
  has_one :scene_object
end
