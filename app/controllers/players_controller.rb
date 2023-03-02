class PlayersController < ApplicationController
  
  def index
    @players = Player.all
    @player = Player.new
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    player = Player.new(player_params)
    if player.save
      flash[:success] = "Welcome to the Sample App!"
    else
      render :index
      @players = Player.all
    end
  end

  private
    def player_params
      params.require(:player).permit(:name, :points)
    end
end
