class AddClassPeriodsToSchool < ActiveRecord::Migration[6.0]
  def change
      add_reference :schools, :class_period, index: true
  end
end
