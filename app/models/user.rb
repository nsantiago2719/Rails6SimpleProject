class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password  , presence: true, confirmation: true, on: :create
  validates :first_name, presence: true
  validates :email     , presence: true

  validate  :valid_email

  def valid_email
    if !email.include?("@") || email.first == "@"
      errors.add(:invalid_email, "Please input a valid email")
    end
  end
end
