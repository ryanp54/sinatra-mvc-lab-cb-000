require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

	post'/piglatinize' do
		PigLatinizer.new.to_pig_latin(params[:user_phrase])
	end

	get '/' do

		erb :user_input
	end

end