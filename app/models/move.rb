class Move < ActiveRecord::Base
  belongs_to :game
  belongs_to :user
  #must be in format A:N where A is between A-J(Upper Case) and N is an integer between 1 and 10, 2 OR 3 Alpha Numberics only
  VALID_MOVE_REGEX = /\A[A-J][1-9]0?\z/
  validates :location, presence: true, format: { with: VALID_MOVE_REGEX }
end
