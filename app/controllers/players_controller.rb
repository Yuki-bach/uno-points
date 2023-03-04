class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
    @players = Player.all
  end

  def create
    player = Player.new(player_params)
    if player.save
      redirect_to root_path
    else
      render :index
      @players = Player.all
    end
  end

  def destroy_all
    Player.destroy_all
    redirect_to root_path 
  end

  def edit_multiple
    @players = Player.all
  end

  def update_multiple
    @players = Player.all
    @players.each_with_index do |player, i|
      added_points = player.points + params[:players].values[i]['points'].to_i
      @player = Player.find(player.id)
      @player.update(points: added_points)
    end
    redirect_to playing_path
  end

  private
    def player_params
      params.require(:player).permit(:name)
    end

end
