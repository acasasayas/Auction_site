class Product < ApplicationRecord
  belongs_to :user
  has_many :bids
  validates :minimum_bid, presence: true
end
