

Given(/^the gear "(.*?)" has been created$/) do |name|
 add Equipment.create(name: name)
end
#   UserFootballLeague.create(user_id: User.last.id, football_league_id: FootballLeague.last.id)
# end