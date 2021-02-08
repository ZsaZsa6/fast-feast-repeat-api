require 'pry'
class FastsController < ApplicationController
    def index
        fasts = Fast.all
        # binding.pry
        new_fast_array = fasts.map do |fast|
            fast.calculate_hours.merge!(fast: fast)
        end
        render json: new_fast_array, include: 
        [comments: {only: [:fast_id, :content, :id]}]
    
    end

    def show
        fast = Fast.find(params[:id])
        render json: fast.calculate_hours.merge!(fast: fast), include: [:comments]
    end

    def create
        fast = Fast.create
        render json: fast.calculate_hours.merge!(fast: fast), include: [:comments]
    end

    def update
        fast = Fast.find_by(id: params[:id])
        fast.update(fast_params)
        render json: fast.calculate_hours.merge!(fast: fast), include: [:comments]
    end

    def destroy
        fast = Fast.find(params[:id])
        fast.delete

    end

   
end


