class ComparisonsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if session[:destination] == "" || session[:destination].nil?
      redirect_to root_path
    end
    session[:home_med] = params[:medication_id]
    session[:destination] = params[:country] if params[:country].present?
    session[:destination_med] = nil


    @medication = Medication.find(params[:medication_id])
    @medications = Medication.where(country: session[:destination])
    @medications = @medications.select do |medication|
      medication.ingredients.pluck(:id).sort == @medication.ingredients.pluck(:id).sort
    end
  end

  def show
    session[:destination_med] = params[:medication_id]
    @medication2 = Medication.find(params[:medication_id])
    respond_to do |format|
      format.html { render "comparisons/index" }
      format.js
    end
  end
end
