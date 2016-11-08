class TrainRoutesController < ApplicationController
  before_action :set_train_route, only: [:show, :update, :destroy]

  # GET /train_routes
  def index
    @train_routes = TrainRoute.all

    render json: @train_routes
  end

  # GET /train_routes/1
  def show
    render json: @train_route
  end

  # POST /train_routes
  def create
    @train_route = TrainRoute.new(train_route_params)

    if @train_route.save
      render json: @train_route, status: :created, location: @train_route
    else
      render json: @train_route.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /train_routes/1
  def update
    if @train_route.update(train_route_params)
      render json: @train_route
    else
      render json: @train_route.errors, status: :unprocessable_entity
    end
  end

  # DELETE /train_routes/1
  def destroy
    @train_route.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_train_route
      @train_route = TrainRoute.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def train_route_params
      params.require(:train_route).permit(:route_id, :route_name, :train_stop_id)
    end
end
