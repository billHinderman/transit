require 'test_helper'

class EtasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eta = etas(:one)
  end

  test "should get index" do
    get etas_url, as: :json
    assert_response :success
  end

  test "should create eta" do
    assert_difference('Eta.count') do
      post etas_url, params: { eta: { arrival_estimate: @eta.arrival_estimate, destination_station_id: @eta.destination_station_id, destination_station_name: @eta.destination_station_name, heading: @eta.heading, is_approaching: @eta.is_approaching, is_delayed: @eta.is_delayed, is_fault: @eta.is_fault, is_scheduled: @eta.is_scheduled, latitude: @eta.latitude, longitude: @eta.longitude, predicted_at: @eta.predicted_at, route_name: @eta.route_name, run_number: @eta.run_number, station_id: @eta.station_id, station_name: @eta.station_name, stop_id: @eta.stop_id, stop_name: @eta.stop_name, train_direction: @eta.train_direction } }, as: :json
    end

    assert_response 201
  end

  test "should show eta" do
    get eta_url(@eta), as: :json
    assert_response :success
  end

  test "should update eta" do
    patch eta_url(@eta), params: { eta: { arrival_estimate: @eta.arrival_estimate, destination_station_id: @eta.destination_station_id, destination_station_name: @eta.destination_station_name, heading: @eta.heading, is_approaching: @eta.is_approaching, is_delayed: @eta.is_delayed, is_fault: @eta.is_fault, is_scheduled: @eta.is_scheduled, latitude: @eta.latitude, longitude: @eta.longitude, predicted_at: @eta.predicted_at, route_name: @eta.route_name, run_number: @eta.run_number, station_id: @eta.station_id, station_name: @eta.station_name, stop_id: @eta.stop_id, stop_name: @eta.stop_name, train_direction: @eta.train_direction } }, as: :json
    assert_response 200
  end

  test "should destroy eta" do
    assert_difference('Eta.count', -1) do
      delete eta_url(@eta), as: :json
    end

    assert_response 204
  end
end
