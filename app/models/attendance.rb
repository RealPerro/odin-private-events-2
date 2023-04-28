class Attendance < ApplicationRecord
  belongs_to :attended_user, class_name: "User"
  belongs_to :attended_event, class_name: "Event"

  def self.enroll(user_id, event_id)
    attendance = new
    attendance.attended_user_id = user_id
    attendance.attended_event_id = event_id
    attendance.save!
  end
end
