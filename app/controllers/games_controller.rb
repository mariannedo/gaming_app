class GamesController < ApplicationController
  def index
  end

  def debug
  	@message = params["message"]
  end
end