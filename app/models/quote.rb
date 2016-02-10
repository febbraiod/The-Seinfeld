class Quote < ActiveRecord::Base

  belongs_to :character
  belongs_to :episode

  validates_presence_of :character, :episode

end