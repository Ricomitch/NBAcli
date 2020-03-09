# find api to use 
# use set url 
#build hashes out of objs
# call custom class .new method
# send those back to our cli 

class NBAcli::API
  def self.get_games
    @games_hash = Unirest.get "https://api-nba-v1.p.rapidapi.com/games/date/%7Bdate%7D",
  headers:{
    "X-RapidAPI-Host" => "api-nba-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "e20bd75f02msh1193f74400a595bp13abe8jsnd35b87c78c4e"
  }
  
  Binding.pry 
  end
end  