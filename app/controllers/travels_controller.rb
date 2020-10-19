class TravelsController < ApplicationController
  before_action :set_travel, only: [:show, :update, :destroy]

  # GET /travels
  def index
    @travels = Travel.all

    render json: @travels
  end

  # GET /travels/1
  def show
    render json: @travel
  end

  # POST /travels
  def create
    @travel = Travel.new(travel_params)

    if @travel.save
      render json: @travel, status: :created, location: @travel
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /travels/1
  def update
    if @travel.update(travel_params)
      render json: @travel
    else
      render json: @travel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /travels/1
  def destroy
    @travel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel
      @travel = Travel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def travel_params
      params.require(:travel).permit(:country_name, :current_status, :closed_exceptions, :days_to_quarantine, :international_travel_note, :international_travel_requirements, :country_flag, :lat_long)
    end
end
