class Purchase < ApplicationRecord

  validates_presence_of :name, :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :email
  
  belongs_to :movie
end
