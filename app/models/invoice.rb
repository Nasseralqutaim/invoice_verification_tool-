class Invoice < ApplicationRecord
  validates :number, presence: true
  belongs_to :user
end

