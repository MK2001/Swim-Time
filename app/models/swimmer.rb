class Swimmer < ActiveRecord::Base
  has_many :attendances
  has_many :swimmer_times
  
  has_secure_password
end
