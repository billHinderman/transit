class AddRouteToStop < ActiveRecord::Migration[5.0]
  def change
    add_column :train_stops, :train_route, :integer
  end
end
