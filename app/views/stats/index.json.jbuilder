json.array!(@stats) do |stat|
  json.extract! stat, :id, :weather, :week, :teamA, :teamB, :winA, :winB, :homeA, :homeB, :pointsA, :pointsB, :run_attemptA, :run_attemptB, :yards_per_carryA, :yards_per_carryB, :pass_attemptA, :pass_attemptB, :pass_completionA, :pass_completionB, :yards_per_catchA, :yards_per_catchB, :first_downA, :first_downB, :fourth_down_attemptA, :fourth_down_attemptB, :fourth_down_madeA, :fourth_down_madeB, :time_of_possesionA, :time_of_possesionB, :fourth_down_ratingA, :fourth_down_ratingB, :total_offenseA, :total_offenseB, :o_playsA, :o_playsB, :pass_efficiencyA, :pass_efficiencyB
  json.url stat_url(stat, format: :json)
end
