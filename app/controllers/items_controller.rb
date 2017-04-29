class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = current_user.items
    puts params[:quantity]
    puts params[:quantity].class

    render json:
      # Only return the items that exist/have not been consumed
      if (params[:quantity] == 'true')
        @items.where(quantity: true)
      # Return items that have been consume, need to be purchased
      else
        @items.where(quantity: false)
      end
  end

  # GET /items/1
  # GET /items.json
  def show
    render json: @items
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.build(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    # @item = current_user.find(params[:id])

    if @item.update(item_params)
      head :no_content
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @item.destroy

    head :no_content
  end

  def set_item
    # @item = Item.find(params[:id])
    @item = current_user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:exp_date, :food_name, :purchase_date, :purchased, :quantity, :store_name, :days_to_exp)
  end
end
