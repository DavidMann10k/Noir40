class SceneObject < ActiveRecord::Base
  attr_accessible :name, :scene_id, :obtainable, :location, :image

  belongs_to :scene

  has_attached_file :image, styles: {
    screen: '800x600',
    half: '200x200',
    full: '400x400'
  }

  scope :searchables, where(obtainable: false)
  scope :obtainables, where(obtainable: true)
end
