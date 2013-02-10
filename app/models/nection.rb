class Nection < ActiveRecord::Base
  attr_accessible :scene_id, :adjacent_id, :direction, :label

  belongs_to :scene
  belongs_to :adjacent, :class_name => "Scene"

  def label_or_direction
    return direction if label.blank?
    return label
  end

  def self.by_scene_name
    joins(:scene).order('name ASC')
  end
end