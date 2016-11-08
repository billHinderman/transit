class TrainStationsController < ApplicationController
  before_action :set_train_station, only: [:show, :update, :destroy]

  # GET /train_stations
  def index
    @train_stations = TrainStation.all

    render json: @train_stations
  end

  # GET /train_stations/1
  def show
    render json: @train_station
  end

  # POST /train_stations
  def create
    @train_station = TrainStation.new(train_station_params)

    if @train_station.save
      render json: @train_station, status: :created, location: @train_station
    else
      render json: @train_station.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /train_stations/1
  def update
    if @train_station.update(train_station_params)
      render json: @train_station
    else
      render json: @train_station.errors, status: :unprocessable_entity
    end
  end

  # DELETE /train_stations/1
  def destroy
    @train_station.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_station
      @train_station = TrainStation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def train_station_params
      params.require(:train_station).permit(:station_id, :station_name, :latitude, :longitude, :train_stop_id)
    end
end
