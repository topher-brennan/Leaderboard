class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def show
    @team = Team.find(params[:id])
    @leaders = @team.users.sort_by do |user|
      -user.current_points(@team)
    end
    @leaders = @leaders.take(10)
  end
end
