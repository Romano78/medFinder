class ComparisonsController < ApplicationController
  def index
    session[:home_med] = params[:medication_id]
    session[:destination] = params[:country]
    @medication = Medication.find(params[:medication_id])
    @medications = Medication.where(country: params[:country])
    @medications = @medications.select do |medication|
      medication.ingredients.pluck(:id).sort == @medication.ingredients.pluck(:id).sort
    end
  end

  def show
    @medication = Medication.find(params[:medication_id])
  end
end
