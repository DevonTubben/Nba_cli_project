class API 


 def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       player_arrays = JSON.parse(response)["data"]
       player_arrays.each do |player|
        Players.new(player["first_name"], player["last_name"], player["team"], player["position"])
        Players.new(player)
        binding.pry
   end 
 end


end 
