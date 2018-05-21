require("minitest/autorun")
require("minitest/rg")

require_relative("../class_sport_team")

class TestSportTeam < MiniTest::Test

def setup
  @team_name = "G5"
  @players = ['luis', 'manuel', 'carlos', 'mike', 'victor', 'isrrael', 'stev',
    'ricardo']
  @coach = "Luis Rodriguez"
  @points = 0
end

def Test_get_team_name
sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")
assert_equal("G5", sport_team.name)
end

def Test_get_players
  sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")
  assert_equal(@players, sport_team.players)
end

def Test_get_coach
  sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")
  assert_equal("Luis Rodriguez", sport_team.coach)
end

def Test_set_coach_name
  sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")

  sport_team.coach = "Jose Calderon"
  assert_equal("Jose Calderon", sport_team.coach)
end

def Test_add_new_player
sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")

sport_team.players = "Manuel Uzcategui"
assert_equal("Manuel Uzcategui", sport_team.players)
end

def Test_find_name_player
sport_team = SportTeam.new("G5", @players, "Luis Rodriguez")

find_name_player(@players, "julio")
assert_equal(false, find_name_player)
end

def Test_update_points_team_win
  sport_team = SportTeam.new("G5", @players, "Luis Rodriguez", 0)
  sport_team.points = 1
  assert_equal(1, sport_team.points)
end

end
