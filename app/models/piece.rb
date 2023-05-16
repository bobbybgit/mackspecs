class Piece < ApplicationRecord

  has_many :style_specs
  has_many :styles, :through => :style_specs

  has_many :piece_constructions
  has_many :instructions, :through => :piece_constructions

  scope :pieces_search, -> (search_string){where('name LIKE ? OR area LIKE ?', "%#{search_string}%", "%#{search_string}%")}

end
