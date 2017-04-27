class ItemsController < ProtectedController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  # GET /items.json
  def index
    @items = current_user.items

    render json: @items
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

  def set_item
    # @item = Item.find(params[:id])
    @item = current_user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:food_name, :purchase_date, :exp_date, :store_name)
  end
end
