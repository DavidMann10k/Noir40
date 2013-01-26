class Scene < ActiveRecord::Base
  attr_accessible :name, :floor, :left_wall, :right_wall

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
