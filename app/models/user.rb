class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  user_regex = /^\w+$/
  
  validates :name, :presence => true,
                   :format   => { :with => user_regex, :message => "Only letters, numbers and underscores allowed." },
                   :length   => { :maximum => 50 },
                   :uniqueness => { :case_sensitive => false }
         
  validates :email, :presence   => true,
                    :format     => { :with => email_regex },
                    :uniqueness => { :case_sensitive => false }

  def name_or_email
    name unless name.blank?
    email
  end
end
