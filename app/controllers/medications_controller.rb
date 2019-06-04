class MedicationsController < ApplicationController
    skip_before_action :authenticate_user!
  def index
    session[:query] = params[:query]
    if params[:query].present?
      @medications = Medication.search(params[:query])
      @medications = @medications.select { |medication| medication.country == session[:home_country] }
    else
      @medications = Medication.all
    end

  end

  def search
    session[:home_med] = nil
    session[:destination_med] = nil
    if params[:user]
      session[:home_country] = params[:user][:home_country]
      session[:destination] = params[:user][:visiting_country]
    end
  end
end
