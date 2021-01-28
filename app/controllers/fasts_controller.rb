class FastsController < ApplicationController
    def index
        fasts = Fast.all
        render json: fasts
    end

    def show
        fast = Fast.find(params[:id])
        fast_hours = 

        render json: fast
    end
    def create
        fast = Fast.create!(fast_params)
        render json: (fast, :created)

    def update
        fast = Fast.find(params[:id])
        fast.update(fast_params)
    end
    def delete
        fast = Fast.find(params[:id])
        fast.destroy
    end

    private

    def fast_params
        params.permit(:active, :created_at, :updated_at)
    end
end
# time stamp.now strftime difference use  timedifference.between (created_at - Time.now).humanize

