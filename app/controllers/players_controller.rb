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

  def edit
    @players = Player.all
  end

  def update
    if @player.update(player_params[:points])
      flash[:success] = "Profile updated"
    else
      render 'edit', status: :unprocessable_entity
      redirect_to edit_path
    end
  end

  def destroy_all
    Player.destroy_all
    redirect_to players_path, status: :see_other
  end

  def playing
    @players = Player.all
  end

  private
    def player_params
      params.require(:player).permit(:name)
    end
end
