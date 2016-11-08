class TrainRouteSerializer < ActiveModel::Serializer
  attributes :id, :route_id, :route_name
  has_one :train_stop
end
