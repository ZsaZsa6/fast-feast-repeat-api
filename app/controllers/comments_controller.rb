require 'pry'
class CommentsController < ApplicationController
    def create        
        comment = Comment.create(comment_params)
        render json: comment
    end
    private
    def comment_params
        params.require(:comment).permit(:fast_id, :content)
    end
end
