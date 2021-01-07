# what do you want your object model to look like

class Players 

    @all = []

    attr_accessor :first_name, :last_name, :team, :position

    def initialize(first_name, last_name, team, position)
        @first_name = firstname 
        @last_name = lastname 
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

    # a method that accepts the players name, and finds the object with that name
    def self.find_player(player_name)
        self.all.find do |player| 
            player.name == player_name 
        end 
    end 
end 