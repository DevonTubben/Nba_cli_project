class API 

 def self.get_nba_players
      url = "https://www.balldontlie.io/api/v1/players?per_page=100"
      response = RestClient.get(url)
      players_array = JSON.parse(response)["data"]
      players_array.each do |players|
       Players.new(players)
    end 
  end 
  end 





