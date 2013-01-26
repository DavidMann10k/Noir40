class Scene < ActiveRecord::Base
  attr_accessible :name

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
