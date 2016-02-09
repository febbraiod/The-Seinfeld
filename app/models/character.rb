class Character < ActiveRecord::Base

  has_many :quotes
  has_many :episodes, through: :quotes
  
end