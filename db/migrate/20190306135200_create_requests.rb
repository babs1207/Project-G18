class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :driver, foreign_key: true
      t.references :payment, foreign_key: true
      t.references :store, foreign_key: true
      t.references :statement, foreign_key: true
      t.text :starting_point
      t.float :gps_starting_point
      t.text :end_point
      t.float :gps_end_point
      t.boolean :paid
      t.boolean :cancelled
      t.decimal :price
      t.text :order_description

      t.timestamps
    end
  end
end
