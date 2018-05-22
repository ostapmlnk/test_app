class User < ApplicationRecord
  has_many :items
  has_many :reviews, as: :reviewable
  belongs_to :city
  has_many :bookings
  has_many :items_reviews, through: :items, source: :reviews
end