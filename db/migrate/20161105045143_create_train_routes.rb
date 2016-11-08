class CreateTrainRoutes < ActiveRecord::Migration[5.0]
  def change
    create_table :train_routes do |t|
      t.integer :route_id
      t.string :route_name
      t.belongs_to :train_stop, foreign_key: true

      t.timestamps
    end
  end
end
