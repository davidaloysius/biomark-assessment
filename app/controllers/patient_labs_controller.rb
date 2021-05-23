class PatientLabsController < ApplicationController

    # GET /patient_labs
    def index
        @patientLabs = PatientLab.all
        render json: @patientLabs
    end

    # POST /patient_labs
    def create
        if (params[:patient_data].present?)
            @patient = Patient.create(
                id_number: params[:id_number],
                first_name: params[:first_name],
                last_name: params[:last_name],
                phone_number: params[:phone_mobile],
                data_of_birth: params[:date_of_birth],
                gender: params[:gender],
            )
        else
            if (params[:patient_name].present?)
                @name = params[:patient_name].strip.split(/\s+/)
                @firstname = @name[0];
                @lastname = @name[1];
            end
            
            @patient = Patient.create(
                id_number: params[:id_number],
                first_name: @firstname,
                last_name: @lastname,
                data_of_birth: params[:date_of_birth],
                gender: params[:gender],
            )
        end

        @patientLab = PatientLab.create(
            lab_number: params[:lab_number],
            clinic_code: params[:clinic_code],
            date_of_test: params[:date_of_test]
        );

        @labStudies = params[:lab_studies]
        @labStudies.each { |labStudy|
            @study = LabStudy.create(
                code: labStudy[:code],
                name: labStudy[:name],
                value: labStudy[:value],
                unit: labStudy[:unit],
                ref_range: labStudy[:ref_range],
                finding: labStudy[:finding],
                result_state: labStudy[:result_state]
            )
        }

        render status: :created
    end

end
