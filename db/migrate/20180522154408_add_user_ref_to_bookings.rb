class AddUserRefToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :user, index: true, foreign_key: true
  end
end
