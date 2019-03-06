class CreateCategoryVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :category_vehicles do |t|
      t.string :type
      t.decimal :valuation

      t.timestamps
    end
  end
end
