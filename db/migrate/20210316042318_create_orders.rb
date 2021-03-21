class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :send_name
      t.string :postal_code
      t.string :address
      t.integer :payment_method
      t.integer :shipping_cost, default: 800
      t.integer :total_price
      t.integer :status,null: false, default: 0
      t.timestamps
    end
  end
end
