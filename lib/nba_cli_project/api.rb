# responsible for making a call to api 
# getting the necessary data 
# creating new ruby objects

class API 

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/players')
        players_array = JSON.parse(response)
        binding.pry 
    end 


end 