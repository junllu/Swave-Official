class Barber < ActiveRecord::Base
  validates :username, presence: true
end
