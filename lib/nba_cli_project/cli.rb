#responsible for communicating between user and data

class CLI 

def start 
    puts "Hello NBA fan! Let's start with your name:"

    greet(user_input)
end 

def user_input 
    gets.strip 
end 

def greet(name) 
    puts "Welcome #{name}! Would you like to see a list of current NBA players?"
    puts "Input 'Y' to see the list of NBA players or 'N' to exit!"
    menu 
end 

def menu 
    selection = user_input 

    if selection == 'Y' 
        # print the list of nba players

    elsif selection == 'N' 
        # give the user a goodbye message 

    else 
        # invalid output and make the user select again

    end 
end 
end 