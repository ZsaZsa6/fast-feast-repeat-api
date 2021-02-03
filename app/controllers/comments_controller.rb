require 'pry'
class CommentsController < ApplicationController

    def index
        binding.pry
        fast = Fast.find(params[:id])
        comments = Comment.all.fast.id
        render json: comments
    end

    # def show
    #     fast = Fast.find(params[:id])
    #     comment = Comment.find(params[:id])

    #     render json: comment
    # end

    def create
        binding.pry
        fast = Fast.find(params[:id])
        comment = Comment.create(comment_params)
        render json: comment
    end

    # def update
    #     fast = Fast.find(params{:id})
    #     comment.update(comment_params)
    #     # head :no_content
    # end

    # def destroy
    #     fast = Fast.find(params[:id])
    #     comment.delete
    #     #head :no_content
    # end

    private
    def comment_params
        params.permit(:content)
    end

end
