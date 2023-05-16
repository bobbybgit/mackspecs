class Style < ApplicationRecord
  before_save :set_formats
  validates :style_num, uniqueness:true
  validate :style_num_format

  has_many :style_specs
  has_many :pieces, :through => :style_specs


  mount_uploader :style_image, ImageUploader
  scope :style_search, -> (search_string){where('name LIKE ? OR style_num LIKE ?', "%#{search_string}%", "%#{search_string}%")}

  def self.brands
    ['Kiko Kostadinov', 'Aether', 'The Workers Club','This Thing of Ours','The Power For The People x','Nigel Cabourn','Carhartt']
  end

  def self.priority_brands
    ['Mackintosh ROW', 'Mackintosh Japan']
  end

  def self.grouped_brands_for_select
    [["",[]],["----------", Style.priority_brands.map.with_index{|brand,i|[brand,"P#{i}"]}],["----------", Style.brands.map.with_index{|brand,i|[brand,i]}.sort],["",[]]]
  end

  def self.interpret_brand(id)
    id[0] == "P" ? Style.priority_brands[id[1..-1].to_i] : Style.brands[id.to_i]
  end

  def set_formats
    self.style_num = self.style_num.upcase
    self.name = self.name.titleize
  end
  
  def style_num_format
    style_num_error_text = "Style Number should be three letters followed by four numbers in the format XXP0000"
    errors.add(:style_num, style_num_error_text ) if !style_num.match(/[a-zA-Z]{2}[pP]\d{4}$/i) 
  end

end
