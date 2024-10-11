class CreateStaffAssignments < ActiveRecord::Migration[7.1]
  def change
    create_table :staff_assignments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.string :role
      t.timestamp :assigned_at

      t.timestamps
    end
  end
end
