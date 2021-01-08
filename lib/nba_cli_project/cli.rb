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
    puts "Input 'yes' to see the list of NBA players or 'no' to exit!"
    menu 
end 

def players_list 
    Players.all.each.with_index(1) do |players, i|
        puts "#{i}, #{players.name}"
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
    player = Player.find_player(choice)
    
end 

def menu 
    choice = user_input 

    if choice == 'yes' || "y"
        players_list
        menu 
    elsif choice == 'no' || "n"
        goodbye 
    else 
        invalid
    end 

end 

end 