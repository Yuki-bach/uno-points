class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end
  
  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @player
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private
    def player_params
      params.require(:player).permit(:name, :points)
    end
end
