class AddTrainStationsToTrainStops < ActiveRecord::Migration[5.0]
  def change
    add_reference :train_stops, :train_station, foreign_key: true
  end
end
