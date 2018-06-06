class Item < ApplicationRecord
  belongs_to :user
  has_many :reviews, as: :reviewable
  scope :find_name, ->(name) { where('name LIKE ?', "%#{name}%") }
  scope :category, ->(category_id) { where(category_id: category_id)}
  include PgSearch
  pg_search_scope :search_everywhere, against: [:name]
  has_many :bookings, dependent: :destroy
  belongs_to :category
  has_and_belongs_to_many :filters_values
end
