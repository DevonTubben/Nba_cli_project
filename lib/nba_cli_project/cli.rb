class CLI 

    def start 
        puts " "
        puts "Welcome NBA fan:"
        puts " " 
        puts "What name would you like us to call you by?"
        puts " "
        API.get_nba_players 
        introduction(user_input)
    end 
    
    def user_input 
        gets.strip 
    end 
    
    def introduction(name) 
        puts " "
        puts "Awesome #{name}! Are you interested in learning about different player information: y or n"
        puts " "
        menu 
    end 

def player_list 
    Players.all.each do |players|
        puts " #{players.name}"
end 
player_choice
puts " "
end 

    def goodbye 
        puts " "
        puts "Thanks for stopping by. I hope we were able to help you find the information you were looking for."
        puts " "
        puts "Feel free to come back at anytime! "
        puts " "
        exit! 
    end 
    
    def invalid
        puts " "
        puts "Invalid input. Please try again."
        puts " "
        menu
end 
 
    
    def player_choice  
        puts " "
        puts "Choose a player to learn more information:"
        puts " "
     nba_player
   end 

   def nba_player 
    choice = user_input 
    players = Players.find_player(choice) 
    
    if players  
        @full_name = players  
        player_information(players)
    else 
        puts " "
        puts "There is no player with that name. Type 'y' to see the list again or 'n' to exit"
        puts " "
        menu 
    end 
end 


    def player_information(players)
        puts " "
        puts "Name: #{players.name}"
        puts " "
        puts "Position: #{players.position}"
        puts " "
        puts "Height feet: #{players.height_feet}" 
        puts " "
        puts "Height inches: #{players.height_inches}"
        puts " "
        puts "Weight: #{players.weight_pounds}"
        puts " "
        puts "Team: #{players.team["full_name"]}" 
        puts " "
        puts "Team Abbreviation: #{players.team["abbreviation"]}" 
        puts " "
        puts "Team City: #{players.team["city"]}"
        puts " "
        puts "Team Conference: #{players.team["conference"]}"
        puts "------------------------------------------------- "
        puts " "
        puts "Type 'y' to see list again or 'n' to exit."
        puts " "
    end 

    def menu 
        choice = user_input 
    
        if choice == 'Y' || choice == 'y'
            puts " " 
            puts "Here is the list of NBA players:"
            puts " "
            player_list
            menu 
        elsif choice == 'N' || choice == 'n'
            goodbye 
        else 
            invalid
        end
    end 
    end 

