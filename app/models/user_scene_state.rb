class UserSceneState < ActiveRecord::Base
  attr_accessible :user_id, :scene_id, :searchable
  belongs_to :User
  has_one :scene_object
end
