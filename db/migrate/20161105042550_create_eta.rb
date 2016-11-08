class CreateEta < ActiveRecord::Migration[5.0]
  def change
    create_table :eta do |t|
      t.integer :station_id
      t.integer :stop_id
      t.string :station_name
      t.text :stop_name
      t.integer :run_number
      t.string :route_name
      t.integer :destination_station_id
      t.string :destination_station_name
      t.integer :train_direction
      t.datetime :predicted_at
      t.datetime :arrival_estimate
      t.boolean :is_approaching
      t.boolean :is_scheduled
      t.boolean :is_fault
      t.boolean :is_delayed
      t.float :latitude
      t.float :longitude
      t.integer :heading

      t.timestamps
    end
  end
end
