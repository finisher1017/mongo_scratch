class SmartphonesController < ApplicationController

def index
	@smartPhone = Equipment.where(equipmentType: "Smartphone")
end

def show
  @smartPhone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
end

def new
end

def edit
  @smartPhone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
end

def create
  @smartPhone = Equipment.new(smartphone_params)
 
  @smartPhone.save
  redirect_to smartphone_path(@smartPhone)
end

def update
  @smartPhone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
 
  if @smartPhone.update(smartphone_params)
    redirect_to smartphones_path(@smartPhone)
  else
    render 'edit'
  end 
end

def destroy
  @smartPhone = Equipment.where(equipmentType: "Smartphone").find(params[:id])
  @smartPhone.destroy
 
  redirect_to smartphones_path
end

private
  def smartphone_params
    params.require(:smartPhone).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :carrier, 
  									:phoneNumber, :serialNumber,
  									:meid, :macAddress, :department,
  									:location, :assigneeName,
  									:status, :notes)
  end

end