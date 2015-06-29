class PrintersController < ApplicationController
 def index
  @printer = Equipment.where(equipmentType: "Printer")
end

def show
  @printer = Equipment.where(equipmentType: "Printer").find(params[:id])
end

def new
end

def edit
  @printer = Equipment.where(equipmentType: "Printer").find(params[:id])
end

def create
  @printer = Equipment.new(printer_params)
 
  @printer.save
  redirect_to printer_path(@printer)
end

def update
  @printer = Equipment.where(equipmentType: "Printer").find(params[:id])
 
  if @printer.update(printer_params)
    redirect_to printer_path(@printer)
  else
    render 'edit'
  end
end

def destroy
  @printer = Equipment.where(equipmentType: "Printer").find(params[:id])
  @printer.destroy
 
  redirect_to printers_path
end

private
  def printer_params
    params.require(:printer).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :jslgTag, 
  									:mrcId, :serialNumber,
  									:hostName, :ipAddress,
  									:department, :location, :assigneeName,
  									:status, :notes)
  end
end
