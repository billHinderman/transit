require 'test_helper'

class TrainRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_route = train_routes(:one)
  end

  test "should get index" do
    get train_routes_url, as: :json
    assert_response :success
  end

  test "should create train_route" do
    assert_difference('TrainRoute.count') do
      post train_routes_url, params: { train_route: { route_id: @train_route.route_id, route_name: @train_route.route_name, train_stop_id: @train_route.train_stop_id } }, as: :json
    end

    assert_response 201
  end

  test "should show train_route" do
    get train_route_url(@train_route), as: :json
    assert_response :success
  end

  test "should update train_route" do
    patch train_route_url(@train_route), params: { train_route: { route_id: @train_route.route_id, route_name: @train_route.route_name, train_stop_id: @train_route.train_stop_id } }, as: :json
    assert_response 200
  end

  test "should destroy train_route" do
    assert_difference('TrainRoute.count', -1) do
      delete train_route_url(@train_route), as: :json
    end

    assert_response 204
  end
end
