class Purchase < ApplicationRecord

  validates_presence_of :name, :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
  # validates_uniqueness_of :email
  validate :customer_bought_ticket?

  belongs_to :movie

  private
    def customer_bought_ticket?
      self.email = email

      unless !email_exists?(email)
        self.errors[:base] << "Sorry, our records show that you have already purchased a ticket!"
      end
    end

    def email_exists?(email)
      return false if Purchase.where("email = ?", email).empty?
      true
    end
end
