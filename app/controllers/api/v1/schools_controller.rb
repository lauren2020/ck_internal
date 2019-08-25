class Api::V1::SchoolsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_school, only: [:show, :update, :destroy]

  # GET /communities
  def index
    @schools = School.all

    render json: @schools
  end

  # GET /communities/1
  def show
    render json: @school
  end

  # POST /communities
  def create
    @school = School.new(school_params)

    if @school.save
      render json: @school, status: :created, location: api_v1_school_url(@school)
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communities/1
  def update
    if @school.update(school_params)
      render json: @school
    else
      render json: @school.errors, status: :unprocessable_entity
    end
  end

  # DELETE /communities/1
  def destroy
    @school.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_params
        params.permit(:name, :days, :avg_attendance, :class_periods)
    end
end
