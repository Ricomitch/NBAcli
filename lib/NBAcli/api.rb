# find api to use 
# use set url 
#build hashes out of objs
# call custom class .new method
# send those back to our cli 

class NBAcli::API
  def self.get_players
    @players_hash = httparty
end  