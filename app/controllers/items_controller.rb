class ItemsController < ApplicationController
  before_action :set_list
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /lists/:list_id/items/1
  def show
  end

  # GET /lists/:list_id/items/new
  def new
    @item = @list.items.build
  end

  # GET /lists/:list_id/items/1/edit
  def edit
  end

  # POST /lists/:list_id/items
  def create
    @item = @list.items.build(item_params)

    if @item.save
      redirect_to @list
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /lists/:list_id/items/1
  def update
    if @item.update(item_params)
      redirect_to @list, status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /lists/:list_id/items/1
  def destroy
    @item.destroy!
    redirect_to @list, status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_item
    @item = @list.items.find(params[:id])
  end

  def item_params
    params.expect(item: [ :content, :completed ])
  end
end
