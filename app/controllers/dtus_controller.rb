class DtusController < ApplicationController
  def index
  @dtu = Equipment.where(equipmentType: "DTU")
end

def show
  @dtu = Equipment.where(equipmentType: "DTU").find(params[:id])
end

def new
end

def edit
  @dtu = Equipment.where(equipmentType: "DTU").find(params[:id])
end

def create
  @dtu = Equipment.new(dtu_params)
 
  @dtu.save
  redirect_to dtu_path(@dtu)
end

def update
  @dtu = Equipment.where(equipmentType: "DTU").find(params[:id])
 
  if @dtu.update(dtu_params)
    redirect_to dtu_path(@dtu)
  else
    render 'edit'
  end
end

def destroy
  @dtu = Equipment.where(equipmentType: "DTU").find(params[:id])
  @dtu.destroy
 
  redirect_to dtus_path
end

private
  def dtu_params
    params.require(:dtu).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :jslgTag, 
  									:serialNumber, :macAddress, 
  									:hostName, :department, :location,
  									:assigneeName, :status, :notes)
  									
  end
end
