class Team < ActiveRecord::Base
  attr_accessible :name, :id
  
  has_many :users, through: :favorites, source: :user
  has_many :favorites
end
