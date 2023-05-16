class Instruction < ApplicationRecord

  has_many :piece_constructions
  has_many :pieces, :through => :piece_constructions

end
