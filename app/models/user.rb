class User < ApplicationRecord
  has_many :reviews, :as => :reviewable
  has_many :items
  has_many :bookings
end