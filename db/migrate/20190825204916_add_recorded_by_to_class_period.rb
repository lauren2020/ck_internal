class AddRecordedByToClassPeriod < ActiveRecord::Migration[6.0]
  def change
    add_column :class_periods, :recorded_by, :string, :default => ""
  end
end
