class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    @warehouse = Warehouse.new(warehouse_params)

    if @warehouse.save
      redirect_to warehouses_path, status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:id])
  end

  def update
    @warehouse = Warehouse.find(params[:id])

    if @warehouse.update(warehouse_params)
      redirect_to warehouses_path, status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @warehouse = Warehouse.find(params[:id])
    @warehouse.destroy

    redirect_to warehouses_path, status: :see_other
  end

  private
    def warehouse_params
      params.require(:warehouse).permit(:name, :location)
    end
end
