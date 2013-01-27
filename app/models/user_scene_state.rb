class UserSceneState < ActiveRecord::Base
  belongs_to :User
  has_one :scene
end