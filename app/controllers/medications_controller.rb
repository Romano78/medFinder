class MedicationsController < ApplicationController
  def index
     if params[:query].present?
      @medications = Medication.search(params[:query])

    else

      @medications = Medication.all
    end

  end

  def search
    # empty search
  end
end
