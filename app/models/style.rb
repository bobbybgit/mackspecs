class Style < ApplicationRecord
  

  mount_uploader :style_image, ImageUploader
  scope :style_search, -> (search_string){where('name LIKE ? OR style_num LIKE ? OR brand LIKE ?', "%#{search_string}%", "%#{search_string}%", "%#{search_string}%")}

  def self.brands
    ['Mackintosh (ROW)', 'Mackintosh (Japan)'] + ['Kiko Kostadinov', 'Aether', 'The Workers Club','This Thing of Ours','The Power For The People x','Nigel Cabourn','Carhartt'].sort
  end

end
