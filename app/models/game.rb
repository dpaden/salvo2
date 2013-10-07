class Game < ActiveRecord::Base
 #allows us to avoid habtm, we only have two users.
 has_one :home_user, :class_name => 'User', :primary_key => "home_user_id", :foreign_key => 'id'
 has_one :away_user, :class_name => 'User', :primary_key => "away_user_id", :foreign_key => 'id'
 has_one :active_user, :class_name => 'User', :primary_key => "active_user_id", :foreign_key => 'id'
 has_many :moves
 has_many :positions
 belongs_to :status
 #prevent a bogus status_id, consider deleting validation, not set by user.
 validates :status,  presence:true
 validates :home_user, presence:true
 #when user creates game they are assigned as the home_user.  The
 #away_user cannot be validated until they join, hence validation.
 validates :away_user, presence:true, :on => :update
 NAME_REGEX= /\A[a-z\d\-_][a-z\d\-_\s]+[a-z\d\-_]\z/i
 #only leading numbers,letters underscores and hyphens followed by the same + spaces but not ending in  space
 #game is only 20 characters.
 validates :name, presence: true, length: {maximum: 20 }, format: { with: NAME_REGEX }
end
