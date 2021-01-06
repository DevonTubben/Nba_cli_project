# what do you want your object model to look like

class Players 

    @all = []

    attr_accessor :first_name, :last_name, :team, :position

    def initialize(first_name, last_name, team, position)
        @first_name = first name 
        @last_name = last name 
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
end 