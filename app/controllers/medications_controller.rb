class MedicationsController < ApplicationController
  def index
    @medications = Medication.all
  end

  def search
  end
end
