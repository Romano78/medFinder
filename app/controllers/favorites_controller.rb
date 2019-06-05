class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(
      user: current_user,
      medication_id: params[:medication_id],
      home_medication_id: session[:home_med]
      )

    @medication_id = params[:medication_id]

    respond_to do |format|
      # format.html { redirect_to  }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    redirect_to dashboard_path
  end

  def unfavorite

    @favorite = Favorite.find(params[:id])
    @favorite.destroy

    @medication_id = @favorite.medication.id

    respond_to do |format|
      # format.html { redirect_to  }
      format.js  # <-- will render `unfavorite.js.erb`
    end
  end
end
