require 'pry'
class FastsController < ApplicationController
    def index
        fasts = Fast.all
        # fasts = (DateTime.new - (fast.created_at).to_time)/60
        
        # binding.pry
        
        # fasts.push({fasts: fasts, hours: fasts_hours})

        render json: fasts
    end

    def show
        fast = Fast.find(params[:id])
        fast_seconds = (fast.updated_at.to_time) - (fast.created_at.to_time)        
        fast_hours = fast_seconds/3600
        fast_left_minutes = fast_hours % (0.60) 
        
        fast_hash = {fast: fast, hours: fast_hours, leftm: fast_left_minutes}
        render json: fast_hash
    end
    def create
        fast = Fast.create
        
        render json: fast
    end

    def update
        fast = Fast.find(params[:id])
        fast.updated_at = fast.update(fast_params)

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

