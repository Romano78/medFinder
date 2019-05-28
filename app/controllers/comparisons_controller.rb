class ComparisonsController < ApplicationController
  def index
    @medication = Medication.find(params[:medication_id])
    @medications = Medication.where(country: params[:country])
  end

  def show
  end
end
