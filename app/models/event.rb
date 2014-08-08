class Event < ActiveRecord::Base
  belongs_to :meet
  has_many :swimmer_times
end
