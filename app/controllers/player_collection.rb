
class PlayersController < ApplicationController

  def new
    @form = Form::PlayerCollection.new
  end

  def create
    @form = Form::PlayerCollection.new(player_collection_params)
    if @form.save
      redirect_to players_path, notice: "商品を登録しました"
    else
      flash.now[:alert] = "商品登録に失敗しました"
      render :new
    end

  end

  private

    def player_collection_params
        params.require(:form_player_collection)
        .permit(players_attributes: [:name, :point])
    end

end
