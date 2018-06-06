class AddFilterRefToFiltersValues < ActiveRecord::Migration[5.2]
  def change
    add_reference :filters_values, :filter, foreign_key: true
  end
end
