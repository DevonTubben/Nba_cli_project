class API 

def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       players_array = JSON.parse(response)["data"]
       players_array.each do |players|
       Players.new(players["first_name"], players["last_name"], players["team"], players["position"])
   end 
 end


end 
