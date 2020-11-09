class Api::V1::ItemsController < ApplicationController
    skip_before_action :authorized

    def index
        @plants = Item.all
        render json: @plants, each_serializer: ItemSerializer
        # render json: plants, include: :price, except: [:updated_at, :created_at]
    end

    def create
        item = Item.create(item_params)

        render json: item
    end

    private

    def item_params
        params.require(:item).permit!
    end
end
