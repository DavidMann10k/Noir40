class UserSceneState < ActiveRecord::Base
  attr_accessible :user_id, :scene_id, :searchable

  belongs_to :user
  belongs_to :scenes
end
