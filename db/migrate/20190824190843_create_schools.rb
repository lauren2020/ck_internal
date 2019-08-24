class CreateSchools < ActiveRecord::Migration[6.0]
    #has_many :class_periods
  def change
    create_table :schools do |t|
      t.string :name, :default => ""
      t.string :days, array: true, default: []
      t.float :avg_attendance, :default => 0.0
      #t.class_period :class_periods, array: true, default: []

      t.timestamps
    end
  end
end
