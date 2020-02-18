class Attendance < ApplicationRecord
  after_create :confirmation_send

  belongs_to :user
  belongs_to :event

  def confirmation_send
    AttendanceMailer.confirmation_email(self).deliver_now
  end
  
end