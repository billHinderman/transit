class TrainStationSerializer < ActiveModel::Serializer
  attributes :id, :station_id, :station_name, :latitude, :longitude
  has_one :train_stop
end
