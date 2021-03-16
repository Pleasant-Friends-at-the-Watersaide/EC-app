class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :send_name
      t.string :postal_code
      t.string :adress
      t.integer :payment_method
      t.integer :shipping_cost
      t.integer :total_price
      t.integer :status

      t.timestamps
    end
  end
end
