class API 

 def self.get_nba_players
       response = RestClient.get('https://www.balldontlie.io/api/v1/players?page=1')
      players_array = JSON.parse(response)["data"] 
      players_array.each do |players|
       Players.new(players)
    end 
  end 
  end 




