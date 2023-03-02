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
    player = Player.new(player_name_params)
    if player.save
      redirect_to new_path
    else
      render :index
      @players = Player.all
    end
  end

  def edit
    @player = Player.find(params[:id])
    @players = Player.all
  end

  def update
    @player = Player.find(params[:id])
    added_number = player_points_params[:points].to_i + @player.points
    if @player.update(points: added_number)
      redirect_to index_path
    else
      render :new
    end
  end

  def destroy_all
    Player.destroy_all
    redirect_to new_path, status: :see_other
  end

  def playing
    @players = Player.all
  end

  private
    def player_name_params
      params.require(:player).permit(:name)
    end
    def player_points_params
      params.require(:player).permit(:points)
    end

end
