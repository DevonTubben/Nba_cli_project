class API 

def self.get_data
       response = RestClient.get('https://www.balldontlie.io/api/v1/players')
       players_array = JSON.parse(response)["data"]
       players_array.each do |players|
           Players.new(players)
     binding.pry
   end 
   

 end

end 