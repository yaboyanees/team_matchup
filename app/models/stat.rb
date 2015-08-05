class Stat < ActiveRecord::Base
	WEATHER_TYPES = ["Indoor","Hot", "Rain", "Snow", "Humid", "Normal"]
	TEAM_NAMES = ["Baltimore Ravens", "Cincinnati Bengals", "Cleveland Browns", "Pittsburgh Steelers", "Chicago Bears", "Detroit Lions", "Green Bay Packers", "Minnesota Vikings", "Houston Texans", "Indianapolis Colts", "Jacksonville Jaguars", "Tennessee Titans", "Atlanta Falcons", "Carolina Panthers", "New Orleans Saints", "Tampa Bay Buccaneers", "Buffalo Bills", "Miami Dolphins", "Dallas Cowboys", "New York Giants", "New England Patriots", "Philadelphia Eagles", "Washington Redskins", "New York Jets", "Denver Broncos", "Arizona Cardinals", "Kansas City Chiefs", "San Francisco 49ers", "Oakland Raiders", "Seatlle Seahawks", "San Diego Chargers", "St. Louis Rams"]
	
	before_save :o_plays, :total_offense, :fourth_down_rating, :pass_efficiency
       
    def win_total
    end
    
    def loss_total
    end
    
    def run_yards
    	a = self.yards_per_carry * self.run_attempt
    	return a
    end
    
    def pass_yards
    	a = self.yards_per_catch * self.pass_attempt
    	return a
    end
    
    def o_plays
    	plays = self.run_attempt + self.pass_attempt
    	return plays
    end
    
    def total_offense
    	offense = (self.yards_per_carry * self.run_attempt) + (self.yards_per_catch * self.pass_attempt)
    	return offense 
    end
    
    def fourth_down_rating
    	rating = ((self.fourth_down_made).to_f) / (self.fourth_down_attempt)
    	a = (rating * 100.0).round(1)
    	return a
	end

	def pass_efficiency 
		efficiency = ((self.pass_completion).to_f) / (self.pass_attempt) 
		a = (efficiency * 100.0).round(1)
		return a
    end
end
