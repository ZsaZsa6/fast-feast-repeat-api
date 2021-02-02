require 'pry'
class FastsController < ApplicationController
    def index
        fasts = Fast.all
        
        new_fast_hash = fasts.map do |fast|
            fast.calculate_hours.merge!(fast: fast)
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
        render json: fast.calculate_hours.merge!(fast: fast)
    end

    def destroy
        fast = Fast.find(params[:id])
        fast.delete
    end

    private

    def fast_params
        params.permit(:id, :active)
    end
end


