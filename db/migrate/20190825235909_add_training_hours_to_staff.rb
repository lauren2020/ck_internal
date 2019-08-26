class AddTrainingHoursToStaff < ActiveRecord::Migration[6.0]
  def change
      add_column :staffs, :field_trip_hours, :float, :default => 0.0
      add_column :staffs, :training_hours, :float, :default => 0.0
  end
end
