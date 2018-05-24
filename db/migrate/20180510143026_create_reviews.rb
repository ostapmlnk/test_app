class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :text
      t.integer :reviewable_id
      t.string :reviewable_type

      t.timestamps
    end
  end
end
