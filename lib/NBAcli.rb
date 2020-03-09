# environment file
# in here loads all files needed to run our app

require "NBAcli/version"
require "NBAcli/cli"
require "NBAcli/nba" 
require "NBAcli/api"

# dependencies
require "pry"
require "httparty"
require "unirest"

module NBAcli
  class Error < StandardError; end
  # Your code goes here...
end
