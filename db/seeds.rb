# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users_json = RestClient.get("http://br-interview-api.heroku.com/users")
JSON.parse(users_json).each do |user|
  User.create({
    first_name: user["user"]["first_name"], 
    last_name: user["user"]["last_name"], 
    id: user["user"]["id"]
  })
end

teams_json = RestClient.get("http://br-interview-api.heroku.com/teams")
JSON.parse(teams_json).each do |team|
  Team.create({
    name: team["team"]["name"], 
    id: team["team"]["id"]
  })
end

favorites_json = RestClient.get("http://br-interview-api.heroku.com/favorites")
JSON.parse(favorites_json).each do |favorite|
  Favorite.create({
    current_points: favorite["favorite"]["current_points"], 
    user_id: favorite["favorite"]["user_id"],
    last_week_points: favorite["favorite"]["last_week_points"], 
    team_id: favorite["favorite"]["team_id"], 
    id: favorite["favorite"]["id"]
  })
end