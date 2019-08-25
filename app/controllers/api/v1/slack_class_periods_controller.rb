class Api::V1::SlackClassPeriodsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_class_period, only: [:show, :update, :destroy]

  # GET /communities
  def index
    @class_period = ClassPeriod.all

    render json: @class_period
  end

  # GET /communities/1
  def show
    render json: @class_period
  end

  # POST /communities
  def create
    @class_period = ClassPeriod.new#(class_period_params)
    @class_period.attendance_count = params[:text]

    @school = School.where(:name => params[:channel_name])
    #@school.class_periods << @class_period
    #@school.update(:class_periods => @class_period)

    if @class_period.save
      render json: @class_period, status: :created, location: api_v1_class_period_url(@class_period)
    else
      render json: @class_period.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communities/1
  def update
    if @class_period.update(class_period_params)
      render json: @class_period
    else
      render json: @class_period.errors, status: :unprocessable_entity
    end
  end

  # DELETE /communities/1
  def destroy
    @class_period.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_period
      @class_period = ClassPeriod.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def class_period_params
        params.permit(:date, :week_day, :attendance_count)
    end
end
