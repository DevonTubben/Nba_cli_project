class API 

def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       player_array = JSON.parse(response)["data"]
       player_array.each do |player|
        Players.new(player["first_name"], player["last_name"], player["team"], player["position"])
         binding.pry
   end 
 end


end 
