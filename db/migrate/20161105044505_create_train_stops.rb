class CreateTrainStops < ActiveRecord::Migration[5.0]
  def change
    create_table :train_stops do |t|
      t.integer :stop_id
      t.string :stop_name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
