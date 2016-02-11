class Quote < ActiveRecord::Base

  belongs_to :character
  belongs_to :episode
  belongs_to :user

  validates_presence_of :content, :character, :episode

end