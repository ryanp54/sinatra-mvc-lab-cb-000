require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
	post'/piglatinize' do
		@user_string = PigLatinizer.new.piglatinize(params[:string])
		@user_string
	end

	get '/' do

		erb :user_input
	end

end