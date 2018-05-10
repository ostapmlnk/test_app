class Item < ApplicationRecord
  has_many :reviews, :as => :reviewable
end
