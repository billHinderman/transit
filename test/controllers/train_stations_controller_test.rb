require 'test_helper'

class TrainStationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @train_station = train_stations(:one)
  end

  test "should get index" do
    get train_stations_url, as: :json
    assert_response :success
  end

  test "should create train_station" do
    assert_difference('TrainStation.count') do
      post train_stations_url, params: { train_station: { latitude: @train_station.latitude, longitude: @train_station.longitude, station_id: @train_station.station_id, station_name: @train_station.station_name, train_stop_id: @train_station.train_stop_id } }, as: :json
    end

    assert_response 201
  end

  test "should show train_station" do
    get train_station_url(@train_station), as: :json
    assert_response :success
  end

  test "should update train_station" do
    patch train_station_url(@train_station), params: { train_station: { latitude: @train_station.latitude, longitude: @train_station.longitude, station_id: @train_station.station_id, station_name: @train_station.station_name, train_stop_id: @train_station.train_stop_id } }, as: :json
    assert_response 200
  end

  test "should destroy train_station" do
    assert_difference('TrainStation.count', -1) do
      delete train_station_url(@train_station), as: :json
    end

    assert_response 204
  end
end
