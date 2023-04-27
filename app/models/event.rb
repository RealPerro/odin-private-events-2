class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id', inverse_of: :created_events
end
