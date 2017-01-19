class User < ApplicationRecord
  validates :mail, presence: true
  validates :mail, uniqueness: true
  has_many :products
  has_many :bids
end
