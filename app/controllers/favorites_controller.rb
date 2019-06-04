class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(
      user: current_user,
      medication_id: params[:medication_id],
      home_medication_id: session[:home_med]
      )

    redirect_to dashboard_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to dashboard_path
  end
end
