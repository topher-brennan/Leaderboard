class Favorite < ActiveRecord::Base
  attr_accessible :current_points, :user_id, :last_week_points, :team_id, :id
  
  belongs_to :user
  belongs_to :team
end
