class CLI 

def start 
    puts "Welcome NBA fan! What name would you like us to call you by?"
    API.get_data 
    greet(user_input)
end 

def user_input 
    gets.strip 
end 

def greet(name) 
    puts "Awesome #{name}! Would you like to see a list of current NBA players?"
    puts "Input 'Y' to see the list of NBA players or 'N' to exit!"
    menu 
end 
# print out a list of all nba players. 
def players_list 
    Players.all.each.with_index(1) do |players, i|
        puts "#{i}, #{players.name}"
end 
player_selection
end 

def goodbye 
    puts "Hopefully you found the information you were looking for! Bye!"
end 

def invalid 
    puts "Invalid input. Please try again."
    menu
end 

def player_selection 
    puts "Select a player for more information."

    selection = user_input 
    Player.find_player(selection)
    # query player class to find more information on player
end 

def menu 
    selection = user_input 

    if selection == 'Y' || "yes"
        # print the list of nba players
        players_list
        menu 
    elsif selection == 'N' || "no"
        # give the user a goodbye message 
        goodbye 
    else 
        # invalid output and make the user select again
        invalid
    end 

end 

end 