class Scene < ActiveRecord::Base
  attr_accessible :name, :floor, :left_wall, :right_wall

  has_many :scenections
  has_many :connected, :through => :scenections, :source => :scene
  has_many :inverse_scenections, :class_name => "Scenections", :foreign_key => "scenection_id"
  has_many :inverse_connected, :through => :inverse_scenections, :source => :scene

  has_attached_file :floor, styles: {
    full: '800x600>',
  }
  has_attached_file :left_wall, styles: {
    full: '800x600>',
  }
  has_attached_file :right_wall, styles: {
    full: '800x600>',
  }
end
