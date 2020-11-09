class Api::V1::PurchasesController < ApplicationController

    def create
        purchase = Purchase.create(purchase_params)
        render json: purchase
    end

    private

    def purchase_params
        params.require(:purchase).permit!
    end
end
