class PatientsController < ApplicationController

  # GET /patients
  def index
    @patients = Patient.all
    render json: @patients
  end

end
