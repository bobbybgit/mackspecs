class Style < ApplicationRecord
  

  mount_uploader :style_image, ImageUploader
  scope :style_search, -> (search_string){where('name LIKE ? OR style_num LIKE ? OR brand LIKE ?', "%#{search_string}%", "%#{search_string}%", "%#{search_string}%")}

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

end
