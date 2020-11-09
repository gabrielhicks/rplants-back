class Api::V1::OrdersController < ApplicationController
    # skip_before_action :authorized 

    def create
        order = Order.create(order_params)
        # byebug
        render json: order
    end

    private

    def order_params
        params.require(:order).permit!
    end
end
