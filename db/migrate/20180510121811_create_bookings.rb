class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :started_at
      t.date :ended_on

      t.timestamps
    end
  end
end
