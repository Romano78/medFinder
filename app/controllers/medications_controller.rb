class MedicationsController < ApplicationController
  def index
    if params[:query].present?
      @medications = Medication.where("english_name ILIKE ?", "%#{params[:query]}%")
    else
      @medications = Medication.all
    end
  end

  def search
    # empty search
  end
end
