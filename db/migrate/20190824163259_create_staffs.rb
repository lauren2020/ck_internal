class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :first_name
      t.string :last_name
      t.float :total_hours
      t.string :sessions_worked, array: true, default: []

      t.timestamps
    end
  end
end
