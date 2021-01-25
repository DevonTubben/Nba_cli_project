require_relative "./nba_cli_project/version"

require 'bundler'
Bundler.require 

require_relative "./nba_cli_project/cli"
require_relative "./nba_cli_project/api"
require_relative "./nba_cli_project/nba"

require 'pry' 
