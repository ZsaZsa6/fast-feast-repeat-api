class Fast < ApplicationRecord
    has_many :comments, dependent: :destroy 

    def calculate_hours
        final_time = self.active ? Time.now.to_time : self.updated_at.to_time
        fast_seconds = final_time - self.created_at.to_time
        fast_minutes = fast_seconds/60      
        fast_hours = (fast_minutes/60).floor
        fast_left_minutes = fast_minutes - (fast_hours * 60)
        return { hours: fast_hours, minutes: fast_left_minutes.floor }
    end
end
