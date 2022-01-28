class Api::V1::ListsController < ApplicationController

    def index
        lists = List.all
        render json: ListSerializer.new(lists)
    end

    def create
        list = List.new(list_params)
        if list.save
            render json: ListSerializer.new(list), status: :accepted
        else
           render json: {errors: list.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        list = List.find(params[:id])
        list.destroy
        render json: {message: "#{list.title} was deleted"}
    end

    private

    def list_params
        params.require(:list).permit(:title, :description, :category_id)
    end
end
