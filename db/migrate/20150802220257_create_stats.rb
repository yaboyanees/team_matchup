class CreateStats < ActiveRecord::Migration
  def change
    create_table :stats do |t|
      t.string  :teamA
      t.string  :teamB
      t.integer :week
      t.boolean :win
      t.boolean :home_team
      t.string 	:weather
      t.integer :run_attempt
      t.integer :yards_per_carry
      t.integer :pass_attempt
      t.integer :pass_completion      
      t.integer :yards_per_catch
      t.integer :first_down
      t.integer :fourth_down_attempt
      t.integer :fourth_down_made
      t.time 	:time_of_possesion
      t.integer :points
	  
	  #calculated
	  t.float 	:fourth_down_rating
	  t.float :total_offense
	  t.integer	:o_plays
	  t.float :pass_efficiency
	  
	  
	  #changes team, opponent, 
	  #:weather, :week, :teamA, :teamB, :winA, :winB, :homeA, :homeB,    
      t.timestamps null: false
    end
  end
end
