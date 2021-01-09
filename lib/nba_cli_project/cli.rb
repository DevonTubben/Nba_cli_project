class CLI 

def start 
    puts "Welcome NBA fan! What name would you like us to call you by?"
    API.get_data 
    binding.pry
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

def player_list 
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
     players = Players.find_player(choice)

    
end 

def player_information(players)
    puts "First name: #{players.first_name}"
    puts "Last name: #{players.last_name}"
    puts "Team: #{players.team}"
    puts "Position: #{players.position}"
    menu 
end 

def menu 
    choice = user_input 

    if choice == 'Y' || choice == 'y'
        player_list
        menu 
    elsif choice == 'N' || choice == 'n'
        goodbye 
    else 
        invalid
    end 

end 

end 