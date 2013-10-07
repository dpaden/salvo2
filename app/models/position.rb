class Position < ActiveRecord::Base
  belongs_to :game
  belongs_to :ship
  belongs_to :user
  VALID_LOCATION_REGEX = /\A[A-J][1-9]0?\:[A-J][1-9]0?\z/
  validates :location, presence: true, format: { with: VALID_LOCATION_REGEX }
  #only legal ships (in the ships lookup)
  #unique key on ship,game,user
  #need to check legal orientation
  #check for overlap
  #check for proper length
end
