class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: {
    small: '300x300',
    med: '600x600',
    large: '1000x1000'
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
