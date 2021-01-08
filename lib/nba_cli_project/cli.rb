class CLI 

def start 
    puts "Welcome NBA fan! What name would you like us to call you by?"
    API.get_data 
    introduction(user_input)
end 

def user_input 
    gets.strip 
end 

def introduction(name) 
    puts "Awesome #{name}! Would you like to see a list of current NBA players?"
    puts "Input 'y' to see the list of NBA players or 'n' to exit!"
    menu 
end 

def players_list 
    Players.all.each.with_index(1) do |players, i|
        puts "#{i}, #{players}"
end 
player_choice
end 

def goodbye 
    puts "Hopefully you found the information you were looking for. Bye!"
end 

def invalid 
    puts "Invalid input. Please try again."
    menu
end 

def player_choice  
    puts "Choose a player to learn more information."

    choice = user_input 
    
     puts "#{choice}" 
     player = Player.find_player(choice)

    
end 

def player_information(player)
    puts "First name: #{player.first_name}"
    puts "Last name: #{player.last_name}"
    puts "Team: #{player.team}"
    puts "Position: #{player.position}"
    menu 
end 

def menu 
    choice = user_input 

    if choice == 'Y' || choice == 'y'
        players_list
        menu 
    elsif choice == 'N' || choice == 'n'
        goodbye 
    else 
        invalid
    end 

end 

end 