class FastSerializer < ActiveModel::Serializer
  attributes :id, :active, :created_at, :updated_at
end
