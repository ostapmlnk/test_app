class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :items_id
      t.date :started_at
      t.date :endet_on

      t.timestamps
    end
  end
end
