require 'sinatra'
require 'pry'
require_relative 'lib/hi_low'
require_relative 'lib/russian_roulette'


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

post '/high_low' do
  @guess = params[:guess]
  erb :high_low 
end

get '/russian' do
  @russian = RussianRoulette.new
  erb :russian 
end

post '/russian' do
  @trigger = params[:trigger]
  erb :russian
end

# post '/russian' do
# end