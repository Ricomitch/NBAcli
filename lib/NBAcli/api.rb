# find api to use 
# use set url 
#build hashes out of objs
# call custom class .new method
# send those back to our cli 

class NBAcli::API
  def self.get_games
    @games_hash = Unirest.get"https://api-nba-v1.p.rapidapi.com/games/date/%7Bdate%7D",
  headers:{
    "X-RapidAPI-Host" => "api-nba-v1.p.rapidapi.com",
    "X-RapidAPI-Key" => "e20bd75f02msh1193f74400a595bp13abe8jsnd35b87c78c4e"
  }
  
  if(@games_hash["Error"])
      ## handle error
      puts "Oops theres no game today"
    else
      games_obj = {
        city: @games_hash["city"]
        arena: @games_hash["arena"]
        currentPeriod: @games_hash["currentPeriod"]
        statusGame: @games_hash["statusGame"]
        fullName: @games_hash["fullName"]
        points: @games_hash["points"]
      }
      NBAcli::Game.new(games_obj)
    end 
  end

end 
  
  Binding.pry 
  end
end  