class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, foreign_key: :attended_event_id
  has_many :attended_users, through: :attendances

  scope :upcoming, -> { where('date > ?', Time.current) }

  scope :past, -> { where('date < ?', Time.current) }
end
