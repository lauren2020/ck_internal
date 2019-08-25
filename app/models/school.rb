class School < ApplicationRecord
    has_many :class_periods
    before_save :calculate_avg_attendance
    
    def calculate_avg_attendance
        total = 0
        class_periods = ClassPeriod.where(:channel_name => self.channel_name)
        class_periods.each { |class_period|
            total += class_period.attendance_count
        }
        count = class_periods.count
        average = 0
        if total != 0 && count != 0
            average = total / count
        end
        self.avg_attendance = average
    end
end
