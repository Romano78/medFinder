class ComparisonsController < ApplicationController
  def index
    @medication = Medication.find(params[:medication_id])

    @medications = Medication.where(country: params[:country])

    @medications = @medications.select do |medication|
      medication.ingredients.pluck(:id).sort == @medication.ingredients.pluck(:id).sort
    end
  end

  def show
  end
end
