class SmartphonesController < ApplicationController

def index
	@smartphone = Equipment.where(equipmentType: "Smartphone")
end

def show
  @smartphone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
end

def new
end

def edit
  @smartphone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
end

def create
  @smartphone = Equipment.new(smartphone_params)
 
  @smartphone.save
  redirect_to smartphone_path(@smartphone)
end

def update
  @smartphone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
 
  if @smartphone.update(smartphone_params)
    redirect_to smartphone_path(@smartphone)
  else
    render 'edit'
  end 
end

def destroy
  @smartphone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
  @smartphone.destroy
 
  redirect_to smartphones_path
end

private
  def smartphone_params
    params.require(:smartphone).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :carrier, 
  									:phoneNumber, :serialNumber,
  									:meid, :macAddress, :department,
  									:location, :assigneeName,
  									:status, :notes)
  end

end