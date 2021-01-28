class CommentsController < ApplicationController

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find(param[:id])

        render json: comment
    end

    def create
        comment = Comment.create(comment_params)
        render json: (comment, :created)
    end

    def update
        
        comment.update(comment_params)
        # head :no_content
    end

    def delete
        comment.destroy
        #head :no_content
    end

    private
    def comment_params
        params.permit(:content)
    end

end
