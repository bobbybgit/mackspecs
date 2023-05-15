class Style < ApplicationRecord

  mount_uploader :style_image, ImageUploader
  scope :style_search, -> (search_string){where('name LIKE ? OR style_num LIKE ?', "%#{search_string}%", "%#{search_string}%")}

end
