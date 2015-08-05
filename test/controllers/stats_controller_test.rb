require 'test_helper'

class StatsControllerTest < ActionController::TestCase
  setup do
    @stat = stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stat" do
    assert_difference('Stat.count') do
      post :create, stat: { first_down: @stat.first_down, fourth_down_attempt: @stat.fourth_down_attempt, fourth_down_made: @stat.fourth_down_made, fourth_down_rating: @stat.fourth_down_rating, home_team: @stat.home_team, location: @stat.location, o_plays: @stat.o_plays, opponent: @stat.opponent, pass_attempt: @stat.pass_attempt, pass_completition: @stat.pass_completition, pass_efficiency: @stat.pass_efficiency, points: @stat.points, run_attempt: @stat.run_attempt, team: @stat.team, time_of_possesion: @stat.time_of_possesion, total_offense: @stat.total_offense, weather: @stat.weather, week: @stat.week, win: @stat.win, yards_per_carry: @stat.yards_per_carry, yards_per_catch: @stat.yards_per_catch }
    end

    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should show stat" do
    get :show, id: @stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stat
    assert_response :success
  end

  test "should update stat" do
    patch :update, id: @stat, stat: { first_down: @stat.first_down, fourth_down_attempt: @stat.fourth_down_attempt, fourth_down_made: @stat.fourth_down_made, fourth_down_rating: @stat.fourth_down_rating, home_team: @stat.home_team, location: @stat.location, o_plays: @stat.o_plays, opponent: @stat.opponent, pass_attempt: @stat.pass_attempt, pass_completition: @stat.pass_completition, pass_efficiency: @stat.pass_efficiency, points: @stat.points, run_attempt: @stat.run_attempt, team: @stat.team, time_of_possesion: @stat.time_of_possesion, total_offense: @stat.total_offense, weather: @stat.weather, week: @stat.week, win: @stat.win, yards_per_carry: @stat.yards_per_carry, yards_per_catch: @stat.yards_per_catch }
    assert_redirected_to stat_path(assigns(:stat))
  end

  test "should destroy stat" do
    assert_difference('Stat.count', -1) do
      delete :destroy, id: @stat
    end

    assert_redirected_to stats_path
  end
end
