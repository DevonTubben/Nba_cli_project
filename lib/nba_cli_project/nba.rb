class Players 

    @@all = []

    attr_accessor :first_name, :last_name, :team, :position

   def initialize(first_name, last_name, team, position)
        @first_name = first_name 
        @last_name = last_name 
        @team = team 
        @position = position
        save
     end 


    def save 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    
    def self.find_player(player_name)
        self.all.find do |player| 
            player.name == player_name 
        end 
    end 
end 