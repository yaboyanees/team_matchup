class Stat < ActiveRecord::Base
	WEATHER_TYPES = ["Indoor","Hot", "Rain", "Snow", "Humid", "Normal"]
	TEAM_NAMES = ["Baltimore Ravens", "Cincinnati Bengals", "Cleveland Browns", "Pittsburgh Steelers", "Chicago Bears", "Detroit Lions", "Green Bay Packers", "Minnesota Vikings", "Houston Texans", "Indianapolis Colts", "Jacksonville Jaguars", "Tennessee Titans", "Atlanta Falcons", "Carolina Panthers", "New Orleans Saints", "Tampa Bay Buccaneers", "Buffalo Bills", "Miami Dolphins", "Dallas Cowboys", "New York Giants", "New England Patriots", "Philadelphia Eagles", "Washington Redskins", "New York Jets", "Denver Broncos", "Arizona Cardinals", "Kansas City Chiefs", "San Francisco 49ers", "Oakland Raiders", "Seatlle Seahawks", "San Diego Chargers", "St. Louis Rams"]
	
	before_save :fourth_down_ratingA, :total_offenseA, :o_playsA, :pass_efficiencyA, :fourth_down_ratingB, :total_offenseB, :o_playsB, :pass_efficiencyB


    def win_total
    end
    
    def loss_total
    end
    
    def run_yardsA
    	a = self.yards_per_carryA * self.run_attemptA
    	b = a.round(1)
    	return b
    end
    
    def pass_yardsA
    	a = self.yards_per_catchA * self.pass_attemptA
    	b = a.round(1)
    	return b
    end
    
    def o_playsA
    	plays = self.run_attemptA + self.pass_attemptA
    	return plays
    end
    
    def total_offenseA
    	offense = (self.yards_per_carryA * self.run_attemptA) + (self.yards_per_catchA * self.pass_attemptA)
    	b = offense.round(1)
    	return b
    end
    
    def fourth_down_ratingA
    	rating = ((self.fourth_down_madeA).to_f) / (self.fourth_down_attemptA)
    	a = (rating * 100.0).round(1)
    	return a
	end

	def pass_efficiencyA 
		efficiency = ((self.pass_completionA).to_f) / (self.pass_attemptA) 
		a = (efficiency * 100.0).round(1)
		return a
    end


    def run_yardsB
    	a = self.yards_per_carryB * self.run_attemptB
    	b = a.round(1)
    	return b
    end
    
    def pass_yardsB
    	a = self.yards_per_catchB * self.pass_attemptB
    	b = a.round(1)
    	return b
    end
    
    def o_playsB
    	plays = self.run_attemptB + self.pass_attemptB
    	return plays
    end
    
    def total_offenseB
    	offense = (self.yards_per_carryB * self.run_attemptB) + (self.yards_per_catchB * self.pass_attemptB)
    	b = offense.round(1)
    	return b 
    end
    
    def fourth_down_ratingB
    	rating = ((self.fourth_down_madeB).to_f) / (self.fourth_down_attemptB)
    	a = (rating * 100.0).round(1)
    	return a
	end

	def pass_efficiencyB 
		efficiency = ((self.pass_completionB).to_f) / (self.pass_attemptB) 
		a = (efficiency * 100.0).round(1)
		return a
    end
end
