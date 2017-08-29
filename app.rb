require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

	get '/' do 
		erb :user_input 
	end

	post '/piglatinize' do 
		@pig_latinized = PigLatinizer.new 
		@to_pig = @pig_latinized.to_pig_latin(params[:user_phrase])
		erb :piglatinize
	end

end