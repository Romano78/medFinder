class MedicationsController < ApplicationController
  def index
     if params[:query].present?
      sql_query = " \
        medications.english_name @@ :query \
        OR ingredients.name @@ :query \
      "
      @medications = Medication.joins(:ingredients).where(sql_query, query: "%#{params[:query]}%")
    else
      @medications = Medication.all
    end
  end

  def search
    # empty search
  end
end
