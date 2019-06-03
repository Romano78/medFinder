class ComparisonsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    session[:home_med] = params[:medication_id]
    @medication = Medication.find(params[:medication_id])
    @medications = Medication.where(country: session[:destination])
    @medications = @medications.select do |medication|
      medication.ingredients.pluck(:id).sort == @medication.ingredients.pluck(:id).sort
    end
  end

  def show
    # @medication = Medication.first #temp
    # @medications = Medication.where(country: @medication.country)
    session[:destination_med] = params[:medication_id]
    @medication2 = Medication.find(params[:medication_id])
    # @medication2.save!
    # binding.pry
    respond_to do |format|
      # format.html { redirect_to medication_comparison_path(@medication2) }
      format.html { render "comparisons/index" }
      format.js
    end
  end
end
