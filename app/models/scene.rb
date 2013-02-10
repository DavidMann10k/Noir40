class Scene < ActiveRecord::Base
  attr_accessible :name, :floor, :left_wall, :right_wall, :beginning, :end

  has_many :nections
  has_many :nected, :through => :nections, :source => :scene
  has_many :inverse_nections, :class_name => "Nections", :foreign_key => "adjacent_id"
  has_many :inverse_nected, :through => :inverse_nections, :source => :scene
  
  has_many :scene_objects

  has_many :user_scene_states
  has_many :user_object_states

  has_attached_file :floor, styles: {
    full: '800x600>',
  }
  has_attached_file :left_wall, styles: {
    full: '800x600>',
  }
  has_attached_file :right_wall, styles: {
    full: '800x600>',
  }

  scope :beginning, where(beginning: true)
  scope :end, where(:end => true)

  default_scope order('name ASC')
end
