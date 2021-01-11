class CLI 

    def start 
        puts " "
        puts "Welcome NBA fan:"
        puts " " 
        puts "What name would you like us to call you by?"
        puts " "
        API.get_data 
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
        Players.all.each.with_index(1) do |players, i|
            puts "#{i}, #{players.full_name}"
    end 
    player_choice
    puts " " 
    end 
    
    
    def goodbye 
        puts " "
        puts "Thanks for stopping by. I hope we were able to help you find the information you were looking for."
        puts " "
        puts "Feel free to come back at anytime! "
    end 
    
    def invalid 
        puts " "
        puts "Invalid input. Please try again."
        puts " "
    end 
    
    def player_choice  
        puts " "
        puts "Choose a player to learn more information:"
        puts " "
    
        choice = user_input 
        
         players = Players.find_player(choice)
         player_information(players)
         menu
    end 
    
    def player_information(players)
        puts "Name: #{players.full_name}"
        puts "Position: #{players.position}"
        puts "Height feet: #{players.height_feet}" 
        puts "Height inches: #{players.height_inches}"
        puts "Weight: #{players.weight_pounds}"
        puts "Team: #{players.team}"
        puts " "
    end 
    
    
    
    def menu 
        choice = user_input 
    
        if choice == 'Y' || choice == 'y'
            puts " " 
            puts "Here is the list of all NBA players:"
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
