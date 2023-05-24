class Rate < ApplicationRecord
  validates :rate, presence: true
  has_many :invoices

end
