class DeskphonesController < ApplicationController
  def index
  @deskphone = Equipment.where(equipmentType: "Deskphone")
end

def show
  @deskphone = Equipment.where(equipmentType: "Deskphone").find(params[:id])
end

def new
end

def edit
  @deskphone = Equipment.where(equipmentType: "Deskphone").find(params[:id])
end

def create
  @deskphone = Equipment.new(deskphone_params)
 
  @deskphone.save
  redirect_to deskphone_path(@deskphone)
end

def update
  @deskphone = Equipment.where(equipmentType: "Deskphone").find(params[:id])
 
  if @deskphone.update(deskphone_params)
    redirect_to deskphones_path(@deskphone)
  else
    render 'edit'
  end
end

def destroy
  @deskphone = Equipment.where(equipmentType: "Deskphone").find(params[:id])
  @deskphone.destroy
 
  redirect_to deskphones_path
end

private
  def deskphone_params
    params.require(:deskphone).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :serialNumber, 
  									:phoneNumber, :macAddress,
  									:department, :location, :assigneeName,
  									:status, :notes)
  									
  end
end
