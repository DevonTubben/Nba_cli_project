class API 

def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       players_array = JSON.parse(response)["data"]
       players_array.each do |players|
       #Players.new(players["first_name"], players["last_name"], players["team"], players["position"])
       Players.new(players)

     #  full_list = players_array["meta"]["total_count"]
    #   count = (players_array["meta"]["current_page"]-1 * 50)
   end 
   #if players_array["meta"]["next_page"] 
   #else 
   # puts ""
 end


end 
