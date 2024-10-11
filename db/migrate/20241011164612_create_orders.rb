class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :table, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.timestamp :order_time

      t.timestamps
    end
  end
end
