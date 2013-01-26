class Scene < ActiveRecord::Base
  attr_accessible :name, :floor, :left_wall, :right_wall

  has_many :connections
  has_many :connected, :through => :connections, :source => :scene
  has_many :inverse_connections, :class_name => "Connection", :foreign_key => "connection_id"
  has_many :inverse_connected, :through => :inverse_connections, :source => :scene

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
