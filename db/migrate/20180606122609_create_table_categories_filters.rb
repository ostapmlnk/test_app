class CreateTableCategoriesFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_filters, id: false do |t|
      t.belongs_to :category, index: true
      t.belongs_to :filter, index: true
    end
  end
end
