class LabStudiesController < ApplicationController

    # GET /lab_studies
    def index
        @labStudies = LabStudy.all
        render json: @labStudies
    end

end
