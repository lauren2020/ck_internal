class AddHoursToStaff < ActiveRecord::Migration[6.0]
  def change
    add_column :staffs, :planning_hours, :float, :default => 0.0
    add_column :staffs, :program_hours, :float, :default => 0.0
  end
end
