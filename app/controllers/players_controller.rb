class PlayersController < ApplicationController
  def index
    @players = Player.all
  end
  
  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new(params[:player])
  end

  def create
    @player = Player.new(params[:player])
    if @player.save
      redirect_to request.referrer
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # def reset
  #   @player = Player.update_all(:point => 0)
  # end

  private
    def player_params
      params.require(:player).permit(:name, :point)
    end
end
