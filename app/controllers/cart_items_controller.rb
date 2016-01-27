class CartItemsController < ApplicationController
  def create
    @cart.cart_items.create(cart_item_params)

    #redirect_to root_url, notice: 'カートにアイテムを追加しました。'
  end

  def destroy
    cart_item = @cart.cart_items.find(params[:id])
    cart_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_url(), notice: "削除しました" }
    end
  end

  private

    def cart_item_params
      params.permit(:product_id)
    end
end
