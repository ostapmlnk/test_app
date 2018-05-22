class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.text :message
      t.string :reviewable_type
      t.integer :reviewable_id

      t.timestamps
    end
  end
end
