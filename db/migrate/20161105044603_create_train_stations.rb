class CreateTrainStations < ActiveRecord::Migration[5.0]
  def change
    create_table :train_stations do |t|
      t.integer :station_id
      t.string :station_name
      t.float :latitude
      t.float :longitude
      t.references :train_stop, foreign_key: true

      t.timestamps
    end
  end
end
