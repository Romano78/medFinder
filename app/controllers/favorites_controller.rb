class FavoritesController < ApplicationController

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to dashboard_path
  end

  def favorite
    @favorite = current_user.favorites.find_by(medication_id: params[:id])
    @medication_id = Medication.find_by(id: params[:id]).id

    if @favorite.nil?
      @favorite = Favorite.create(user: current_user, medication_id: params[:id], home_medication_id: session[:home_med])

    else
      @favorite.destroy
      @favorite = nil
    end

    respond_to do |format|
      # format.html { redirect_to  }
      format.js  # <-- will render `unfavorite.js.erb`
    end
  end
end
