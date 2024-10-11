class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :contact_info
      t.string :opening_hours

      t.timestamps
    end
  end
end
