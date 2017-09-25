require("minitest/autorun")
require ("minitest/rg")
require_relative("./team.rb")

class TestTeam < MiniTest::Test

  def test_name()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    assert_equal("Springfield Power Plant", team.name)
  end

  def test_roster()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    assert_equal(["Homer", "Lenny", "Carl"], team.roster)
  end

  def test_coach()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    assert_equal("Mr Burns", team.coach)
  end

  def test_change_coach()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    team.change_coach("Smithers")

    assert_equal("Smithers", team.coach)
  end

  def test_add_player()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    team.add_player("Charlie")

    assert_equal(["Homer", "Lenny", "Carl", "Charlie"], team.roster)
  end

  def test_check_player_present()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    assert(team.check_player("Homer"))
  end

  def test_check_player_absent()
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    refute(team.check_player("Charlie"))
  end

  def test_scores
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    assert_equal(0, team.scores)
  end

  def test_add_points_win
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    team.add_points("win")

    assert_equal(1, team.scores)
  end

  def test_add_points_loss
    team = Team.new("Springfield Power Plant", ["Homer", "Lenny", "Carl"] ,"Mr Burns", 0)

    team.add_points("loss")

    assert_equal(0, team.scores)
  end










end
