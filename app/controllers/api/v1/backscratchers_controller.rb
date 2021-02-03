class Api::V1::BackscratchersController < ApplicationController
    before_action :find_backscratcher, only: [:show, :update, :destroy]

    #GET
    def index
        @backscratcher = Backscratcher.all
        render json: @backscratcher
    end

    #GET
    def show
        render json: @backscratcher
    end

    #POST
    def create
        @backscratcher = Backscratcher.new(backscratcher_params)
        if @backscratcher.save
            render json: @backscratcher
        else
            render error: {error: 'Unable to create backscratcher.'}, status: 400
        end
    end

    #PUT
    def update
        if @backscratcher
            @backscratcher.update(backscratcher_params)
            render json: {message: 'Backscratcher updated.'}, status: 200
        else
            render json: {error: 'Unable to update backscratcher'}, status: 400
        end
    end

    #DELETE
    def destroy
        if @backscratcher
            @backscratcher.destroy
            render json: {message: 'Backscratcher deleted.'}, status: 200
        else
            render json: {error: 'Unable to delete backscratcher'}, status: 400
        end
    end

    private
    def backscratcher_params
        params.require(:backscratcher).permit(:name, :description, :size, :price)
    end

    def find_backscratcher
        @backscratcher = Backscratcher.find(params[:id])
    end
end
