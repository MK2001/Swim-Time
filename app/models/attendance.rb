class Attendance < ActiveRecord::Base
  belongs_to :meet
  belongs_to :swimmer
end
