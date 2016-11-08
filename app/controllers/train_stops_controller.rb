class TrainStopsController < ApplicationController
  before_action :set_train_stop, only: [:show, :update, :get_eta, :destroy]

  # GET /train_stops
  def index
    @train_stops = TrainStop.all

    render json: @train_stops
  end

  # GET /train_stops/1
  def show
    render json: @train_stop
  end

  # GET /train_stops/1/etas
  def get_eta
    @etas = get_etas
    render json: @etas
  end

  # POST /train_stops
  def create
    @train_stop = TrainStop.new(train_stop_params)

    if @train_stop.save
      render json: @train_stop, status: :created, location: @train_stop
    else
      render json: @train_stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /train_stops/1
  def update
    if @train_stop.update(train_stop_params)
      render json: @train_stop
    else
      render json: @train_stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /train_stops/1
  def destroy
    @train_stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_stop
      @train_stop = TrainStop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def train_stop_params
      params.require(:train_stop).permit(:stop_id, :stop_name, :latitude, :longitude)
    end

    def get_etas
      train_time_api = CTATrainTimeService.new(@train_stop.stop_id)
      train_time_api.etas
    end
end
