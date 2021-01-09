class Players 

    @@all = []

    attr_accessor :first_name, :last_name, :position, :height_feet, :height_inches, :weight_pounds, :team

  # def initialize(first_name, last_name, team, position)
  #      @first_name = first_name 
  #      @last_name = last_name 
  #      @team = team 
  #      @position = position
  #     save
  #   end 

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

    def full_name 
        @first_name + " " + @last_name
    end 

    #def height 
    #    @height_feet + " ' " + @height_inches 
    # end 

    
    def self.find_player(player_name)
        self.all.find do |players| 
            players.full_name == player_name 
        end 
    end 
end 