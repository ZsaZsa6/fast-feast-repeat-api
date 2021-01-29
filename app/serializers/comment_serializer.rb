class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content
  # def initialize(comment_object)
  #   @comment = comment_object
  # end

  # def to_serialized_json
  #   options = include: fast
  #   @sighting.to_json(options)
  # end
end
