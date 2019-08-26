class Staff < ApplicationRecord
    before_save :calculate_total_hours

    def calculate_total_hours
        self.total_hours = self.planning_hours + self.program_hours + self.training_hours + self.field_trip_hours
    end
end
