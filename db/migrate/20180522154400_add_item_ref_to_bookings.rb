class AddItemRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :item, index: true, foreign_key: true
  end
end
