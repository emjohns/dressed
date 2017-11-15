class OutfitController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def add_to_outfit
    @order = current_order

    line_item = @order.line_items.new(item_id: params[:item_id])
    @order.save
    session[:order_id] = @order.id

    redirect_back(fallback_location: root_path)
  end

  def view_outfit
    @line_items = current_order.line_items
  end

  def get_dressed
    line_items = current_order.line_items

    if line_items.length != 0
      current_order.update(user_id: current_user.id)

      @order = current_order

      @order.save

      session[:order_id] = nil
    end
  end

  def remove
    @order = current_order
    line_item = LineItem.find(params[:line_item_id]).destroy

    session[:order_id] = @order.id

    redirect_to view_outfit_path
  end
end
