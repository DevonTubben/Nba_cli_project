class Players 

    @@all = []

    attr_accessor :first_name, :last_name, :position, :height_feet, :height_inches, :weight_pounds, :team, :full_name, :city 

     def initialize(player_hash)
        player_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end 
        save 
     end 

    def save 
        @@all << self
    end 

    def self.all 
        @@all 
    end 

    def name
        @first_name + " " + @last_name

    end 

    def self.find_player(player_name)
        self.all.find do |players| 
            players.name == player_name 
        end  
    end 
    # Takes in a string and returns an array of players of that team
    # self.find_player_by_team
   
     def self.find_player_by_team(team_name)
        @@all.select do |players| 
            binding.pry 
            players.team["full_name"] == team_name
            
        end 
     end 
    





end 