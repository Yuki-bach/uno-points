class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
  def new
    @player = Player.new
  end
  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to @player
    else
      render 'new', status: :unprocessable_entity
    end
  end
  def reset
    @player = Player.update_all(:point => 0)
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
