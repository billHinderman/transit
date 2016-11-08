require 'test_helper'

class TrainStopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_stop = train_stops(:one)
  end

  test "should get index" do
    get train_stops_url, as: :json
    assert_response :success
  end

  test "should create train_stop" do
    assert_difference('TrainStop.count') do
      post train_stops_url, params: { train_stop: { latitude: @train_stop.latitude, longitude: @train_stop.longitude, stop_id: @train_stop.stop_id, stop_name: @train_stop.stop_name } }, as: :json
    end

    assert_response 201
  end

  test "should show train_stop" do
    get train_stop_url(@train_stop), as: :json
    assert_response :success
  end

  test "should update train_stop" do
    patch train_stop_url(@train_stop), params: { train_stop: { latitude: @train_stop.latitude, longitude: @train_stop.longitude, stop_id: @train_stop.stop_id, stop_name: @train_stop.stop_name } }, as: :json
    assert_response 200
  end

  test "should destroy train_stop" do
    assert_difference('TrainStop.count', -1) do
      delete train_stop_url(@train_stop), as: :json
    end

    assert_response 204
  end
end
