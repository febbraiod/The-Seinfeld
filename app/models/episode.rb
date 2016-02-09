class Episode

  has_many_and_belongs_to_many :characters
  has_many :quotes, through: :characters

end