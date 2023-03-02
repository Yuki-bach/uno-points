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
      flash[:success] = "Welcome to the Sample App!"
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
    if @player.update(player_points_params)
      redirect_to request.referer
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
