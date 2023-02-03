class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian], allow_nil: false }
  has_many :reviews, dependent: :destroy
end
