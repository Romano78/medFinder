class MedicationsController < ApplicationController
  def index
    if params[:query].present?
      @medications = Medication.search(params[:query])
      @medications = @medications.select { |medication| medication.country == params[:country] }
    else
      @medications = Medication.all
    end
  end

  def search
    @country = params[:user][:country]
  end
end
