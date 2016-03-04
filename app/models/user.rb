class User < ActiveRecord::Base

  has_many :quotes

  validates_presence_of :username, :email, :password
  validates :username, uniqueness: true

  #maybe add secure password?

end