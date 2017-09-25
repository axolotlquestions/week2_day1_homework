class Team
  def initialize(input_team_name, input_players, input_coach, input_points)
    @name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  def name()
    return @name
  end

  def roster()
    return @players
  end
  #
  def coach()
    return @coach
  end

  def change_coach(new_coach)
    @coach = (new_coach)
  end

  def add_player(new_player)
  @players.push(new_player)
  end

  def check_player(player)
    @players.include?(player)
  end

  def scores
    return @points
  end

  def add_points(result)
    if (result) == "win"
      @points += 1
    end
  end


end
