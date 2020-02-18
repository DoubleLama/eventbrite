class Event < ApplicationRecord
  has_many :attendances
  belongs_to :user
  validate :event_must_be_future
  validate :duration_must_be_times_five

  validates :start_date, :duration, :title, :description, :price, :location, presence: true

  validates :title, length: {in: 5..140}
  validates :description, length: {in: 20..1000}
  validates :price, :inclusion => 1..1000
  
  def event_must_be_future
    errors.add(:start_date, "La date ne peut être dans le passé") unless start_date > Time.now 
  end 

  def duration_must_be_times_five
    errors.add(:duration, "La durée doit être par tranche de 5 minutes") unless (duration > 0 && duration%5==0) 
  end 

end