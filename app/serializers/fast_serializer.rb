class FastSerializer < ActiveModel::Serializer
  # has_many :commentsh
  attributes :fast, :id, :active, :created_at, :updated_at
  
end
