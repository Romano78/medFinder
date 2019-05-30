class MedicationsController < ApplicationController
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
    session[:home_country] = params[:user][:country]
  end
end
