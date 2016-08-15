require 'sinatra'
require 'pry'
require_relative 'lib/high_low'

get '/' do
	# form to create a new player
	# @player - show a game menu
	# that game menu is links to each
	# game route eg. /high_low, /craps
	erb :index
end

get '/high_low' do
	@high_low = HighLow.new
	erb :high_low
end