class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :driver, foreign_key: true
      t.references :payment, foreign_key: true
      t.references :store, foreign_key: true
      t.references :statement, foreign_key: true
      t.string :starting_point
      t.float :gps_starting
      t.string :end_point
      t.float :gps_end_point
      t.text :order_description
      t.boolean :paid
      t.boolean :cancelled
      t.decimal :price

      t.timestamps
    end
  end
end
