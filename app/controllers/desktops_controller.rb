class DesktopsController < ApplicationController

def index
  @desktop = Equipment.where(equipmentType: "Desktop")
end

def show
  @desktop = Equipment.where(equipmentType: "Desktop").find(params[:id])
end

def new
end

def edit
  @desktop = Equipment.where(equipmentType: "Desktop").find(params[:id])
end

def create
  @desktop = Equipment.new(desktop_params)
 
  @desktop.save
  redirect_to desktop_path(@desktop)
end

def update
  @desktop = Equipment.where(equipmentType: "Desktop").find(params[:id])
 
  if @desktop.update(desktop_params)
    redirect_to desktop_path(@desktop)
  else
    render 'edit'
  end
end

def destroy
  @desktop = Equipment.where(equipmentType: "Desktop").find(params[:id])
  @desktop.destroy
 
  redirect_to desktops_path
end

private
  def desktop_params
    params.require(:desktop).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :jslgTag, 
  									:manufacturerTag, :serialNumber,
  									:osType, :hostName, :ram, :hdd,
  									:department, :location, :assigneeName,
  									:status, :notes)
  end

end

