class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :comments
  has_attached_file :image, styles: {
    small: "100x100",
    med: "300x300",
    large: "500x500"
  }

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
