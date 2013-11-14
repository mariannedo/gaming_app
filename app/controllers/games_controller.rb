class GamesController < ApplicationController
	def index
	end

	def rock_paper_scissors 
	end

	def rock_paper_scissors_play
		app_guess = [*0..2].sample
		play_array = ["rock", "paper", "scissors"]
		@app_throw = play_array[app_guess]
		@user_throw = params[:throw]

		if @user_throw == @app_throw
			render 'tie_rps'
		elsif @user_throw == 'rock' && (@app_throw == 'paper' || @app_throw == 'scissors')
			if @app_throw == 'paper'
				render 'lose_rps'
			else 
				render 'win_rps'
			end
		elsif @user_throw == 'paper' && (@app_throw == 'rock' || @app_throw == 'scissors')
			if @app_throw == 'scissors'
				render 'lose_rps'
			else 
				render 'win_rps'
			end
		elsif @user_throw == 'scissors' && (@app_throw == 'rock' || @app_throw == 'paper')
			if @app_throw == 'rock'
				render 'lose_rps'
			else 
				render 'win_rps'
			end
		else
			render text: 'BAD INPUT'
		end
	end

  def secret_number
  end

  def secret_number_play
  	@app_guess = [*1..5].sample
  	@user_guess = params[:guess].to_i
  	if @app_guess == @user_guess
  		render 'win'
  	else 
  		render 'lose'
  	end
  end
end