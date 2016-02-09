class Episode < ActiveRecord::Base

  has_many :characters, through: :character_episodes
  has_many :quotes, through: :characters

end