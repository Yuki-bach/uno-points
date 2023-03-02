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
      redirect_to index_path
    else
      render :index
      @players = Player.all
    end
  end

  def destroy_all
    Player.destroy_all
    redirect_to players_path, status: :see_other
  end

  private
    def player_params
      params.require(:player).permit(:name, :points)
    end
end
