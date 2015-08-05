json.array!(@stats) do |stat|
  json.extract! stat, :id, :team, :opponent, :week, :win, :home_team, :weather, :run_attempt, :yards_per_carry, :pass_attempt, :pass_completion, :yards_per_catch, :first_down, :fourth_down_attempt, :fourth_down_made, :time_of_possesion, :points, :o_plays, :total_offense, :fourth_down_rating, :pass_efficiency
  json.url stat_url(stat, format: :json)
end
