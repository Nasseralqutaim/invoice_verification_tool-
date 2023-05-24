class User < ApplicationRecord
  has_many :invoices
  validates :name, presence: true
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
