class NBAcli::Cli
  
  #start should greet user, or give desc
  # get data from api
  # create new custom objects
  #all inside start method
  
  def start 
    puts "Hello"
    
    @data = NBAcli::API.get_games
    puts "GETTING DATA FROM API ... PLEASE WAIT"
    puts "CREATING NEW OBJS"
    display_info
  end
  
  def display_info
    puts "please enter player last name:"
    input = gets.strip.downcase
    
    if input == "players"
      puts "-----------Player Info-----------"
      puts LIST OF PLAYERS/OBJS
      display_info
    elsif input  == "teams"
      puts "-----------Team Info-----------"
      puts LIST OF TEAMS/OBJS
      display_info
    else  
      quit
    end  
  end
  
  
  # deal with inputs(loop to get new info)
  #example while input =/= "exit do"
  # display a list of somthing or give example of what we expect as inputs
  # get user input
  # depending on what we get, do something
  # condition to check input for good value
  # else tell then try 
  
  # exit command
  # if input is == "exit"
  # kill program say good bye
  
  def quit
    puts "GOODBYE"  
  end
end  