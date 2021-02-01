require 'pry'
class FastsController < ApplicationController
    def index
        fasts = Fast.all
        
        new_fast_hash = fasts.map do |fast|
            fast.calculate_hours.merge!(fast: fast)
            # binding.pry
           
        end

        render json: new_fast_hash
        
       
    end

    def show
        fast = Fast.find(params[:id])
        render json: fast.calculate_hours.merge!(fast: fast)
    end
    def create
        fast = Fast.create
        render json: fast.calculate_hours.merge!(fast: fast)
       
    end

    def update
        fast = Fast.find_by(id: params[:id])
        fast.update(fast_params)
        # binding.pry
        render json: fast.calculate_hours.merge!(fast: fast)
    end

    def delete
        fast = Fast.find(params[:id])
        fast.destroy
    end

    private

    def fast_params
        params.permit(:id, :active)
    end
end
# time stamp.now strftime difference use  timedifference.between (created_at - Time.now).humanize

