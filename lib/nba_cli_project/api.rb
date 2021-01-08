class API 

def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       players_array = JSON.parse(response)["data"]
       players_array.each do |player|
       Players.new(player["first_name"], player["last_name"], player["team"], player["position"])
   end 
 end


end 
