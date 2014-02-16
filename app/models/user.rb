class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :id
  
  has_many :favorites
  
  def current_points(team)
    Favorite.where(user_id: self.id, team_id: team.id)[0].current_points
  end
  
  def last_week_points(team)
    Favorite.where(user_id: self.id, team_id: team.id)[0].last_week_points
  end
end
