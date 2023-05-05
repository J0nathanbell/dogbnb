class User < ApplicationRecord
  has_many :dogs

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
