class Meet < ActiveRecord::Base
  has_many :attendances
  has_many :events
end
