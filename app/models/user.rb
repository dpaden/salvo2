class User < ActiveRecord::Base
  has_many :home_games, :foreign_key => "home_user_id", :class_name => "Game"
  has_many :away_games, :foreign_key => "away_user_id", :class_name => "Game"
  #put all email in lower case
  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 8 }
  #this pulls in rails3+ salted passwords via bcrypt
  has_secure_password
end
