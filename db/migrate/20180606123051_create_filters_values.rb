class CreateFiltersValues < ActiveRecord::Migration[5.2]
  def change
    create_table :filters_values do |t|
      t.string :option

    end
  end
end
