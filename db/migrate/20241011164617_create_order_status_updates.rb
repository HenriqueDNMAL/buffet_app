class CreateOrderStatusUpdates < ActiveRecord::Migration[7.1]
  def change
    create_table :order_status_updates do |t|
      t.references :order, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
