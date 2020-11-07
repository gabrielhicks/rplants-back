class Api::V1::ItemsController < ApplicationController
    skip_before_action :authorized
    def index
        plants = Item.all
        render json: plants, include: :price, except: [:updated_at, :created_at]
    end
end
