class TrainStopSerializer < ActiveModel::Serializer
  attributes :id, :stop_id, :stop_name, :latitude, :longitude
end
