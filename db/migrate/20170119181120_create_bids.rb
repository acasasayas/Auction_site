class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.float :amount
      t.integer :user_id
      t.integer :product_id

      t.timestamps
    end
    add_reference :user
  end
end
