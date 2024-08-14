class OrdersController < ApplicationController
    def create
        @order = Order.new(order_params)
        if @order.save
            render json: @order, status: :created
        else
            render json: @order.errors, status: :uprocessable_entity
        end
    end

    def show
        @order = Order.find(params[:id])
        render json: @order
    end

    private
    def order_params
        params.require(:order).permit(
            :product_id, :user_id, :status
        )
    end
end
