class Quote

  belongs_to :character
  has_one :episode, through: :character

end