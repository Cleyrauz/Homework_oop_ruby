class SportTeam
#
attr_accessor :team_name, :players, :coach, :points

def initialize(input_name, input_players, input_coach, input_points)
  @team_name = input_name
  @players = input_players
  @coach = input_coach
  @points = input_points
end

# def get_team_name()
#   return :team_name
# end
#
# def get_players()
#   return :players
# end
#
# def get_coach()
#   return :coach
# end
#
# def set_coach_name(new_coach)
# @coach = new_coach
# end

def add_new_player(new_player)
  add_new_player = players.push(new_player)
end

def find_name_player(players, name)
  for name in players
    if players == name
      return true
    else
      return false
    end
  end
end

def update_points_team_win(result)
  if result == "won"
    points += 1
  end
end

end
