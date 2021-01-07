# responsible for making a call to api 
# getting the necessary data 
# creating new ruby objects

class API 

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/players')
        players_array = JSON.parse(response)["data"]
        players_array.each do |player|
        Players.new(player["first_name"], player["last_name"], player["team"], player["position"])
        binding.pry 
    end 
end


end 