class CreateClassPeriods < ActiveRecord::Migration[6.0]
  def change
    create_table :class_periods do |t|
      t.date :date, :default => Date.today
      t.string :week_day, :default => "Not Set"
      t.integer :attendance_count, :default => 0

      t.timestamps
    end
  end
end
