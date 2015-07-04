class WastecontainersController < ApplicationController
def index
  @wastecontainer = Equipment.where(equipmentType: "Waste Container")
end

def show
  @wastecontainer = Equipment.where(equipmentType: "Waste Container").find(params[:id])
end

def new
end

def edit
  @wastecontainer = Equipment.where(equipmentType: "Waste Container").find(params[:id])
end

def create
  @wastecontainer = Equipment.new(container_params)
 
  @wastecontainer.save
  redirect_to wastecontainer_path(@wastecontainer)
end

def update
  @wastecontainer = Equipment.where(equipmentType: "Waste Container").find(params[:id])
 
  if @wastecontainer.update(container_params)
    redirect_to wastecontainer_path(@wastecontainer)
  else
    render 'edit'
  end
end

def destroy
  @wastecontainer = Equipment.where(equipmentType: "Waste Container").find(params[:id])
  @wastecontainer.destroy
 
  redirect_to wastecontainers_path
end

private
  def container_params
    params.require(:wastecontainer).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :wasteId,
  									:quantity, :notes )
  end
end
