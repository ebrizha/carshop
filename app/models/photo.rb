class Photo < ApplicationRecord
  has_attached_file :source, :styles => {
      :thumb  => "100x100#",
      :small  => "150x150>",
      :medium => "500x300"
  }
  validates_attachment_content_type :source, :content_type => /\Aimage\/.*\Z/
end
