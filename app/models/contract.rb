class Contract < ApplicationRecord
  validates :number, presence: true
  has_many :invoices

end
