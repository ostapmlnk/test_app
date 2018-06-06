class CreateItemToFiltersValues < ActiveRecord::Migration[5.2]
  def change
    create_table :items_filters_values, id: false do |t|
      t.belongs_to :item, index: true
      t.belongs_to :filters_value, index: true
    end
  end
end
