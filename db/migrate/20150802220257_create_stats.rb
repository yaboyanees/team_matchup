class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
	  t.string	:weather
	  t.integer	:week
	  t.string	:teamA
	  t.string	:teamB
	  t.boolean	:winA
	  t.boolean	:winB
	  t.boolean	:homeA
	  t.boolean	:homeB
	  t.integer	:pointsA
	  t.integer	:pointsB
	  t.integer	:run_attemptA
	  t.integer	:run_attemptB
	  t.integer	:yards_per_carryA
	  t.integer	:yards_per_carryB
	  t.integer	:pass_attemptA
	  t.integer	:pass_attemptB
	  t.integer	:pass_completionA
	  t.integer	:pass_completionB
	  t.integer	:yards_per_catchA
	  t.integer	:yards_per_catchB
	  t.integer	:first_downA
	  t.integer	:first_downB
	  t.integer	:fourth_down_attemptA
	  t.integer	:fourth_down_attemptB
	  t.integer	:fourth_down_madeA
	  t.integer	:fourth_down_madeB
	  t.time	:time_of_possesionA
	  t.time	:time_of_possesionB   
	  
	  #calculated
	  t.float 	:fourth_down_ratingA
	  t.float 	:total_offenseA
	  t.integer	:o_playsA
	  t.float :pass_efficiencyA
	  t.float 	:fourth_down_ratingB
	  t.float :total_offenseB
	  t.integer	:o_playsB
	  t.float :pass_efficiencyB
	  
      t.timestamps null: false
    end
  end
end
