class FastsController < ApplicationController
    def index
        fasts = Fast.all
        render json: fasts
    end

    def show
        fast = Fast.find(params[:id])
        render json: fast
    end
end