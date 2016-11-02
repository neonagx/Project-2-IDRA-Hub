class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: {
    small: '200x200',
    med: '500x500',
    large: '800x800'
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
