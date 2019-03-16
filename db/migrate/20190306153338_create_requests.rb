class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.references :user, foreign_key: true
      t.references :driver, foreign_key: true
      t.references :payment, foreign_key: true
      t.string :starting_point
      t.string :end_point
      t.text :order_description
      t.string :status
      t.boolean :paid, default: false
      t.decimal :price

      t.timestamps
    end
  end
end
