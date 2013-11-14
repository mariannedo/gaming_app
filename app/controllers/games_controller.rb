class GamesController < ApplicationController
  def index
  	@games = ["Secret Number"]
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