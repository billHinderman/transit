class AddTainRoutesToTrainStops < ActiveRecord::Migration[5.0]
  def change
    add_reference :train_stops, :train_route, foreign_key: true
  end
end
