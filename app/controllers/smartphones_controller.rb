class SmartphonesController < ApplicationController

def index
	@smartPhone = Equipment.all
end

def show
  @smartPhone = Equipment.where(equipmentType: "Smartphone", equipmentModel: "Galaxy4")
end

def new
end

def create
  @smartPhone = Equipment.new(smartphone_params)
 
  @smartPhone.save
  redirect_to @smartPhone
end

private
  def smartphone_params
    params.require(:smartphone).permit(:equipmentType, :manufacturer,
  									:equipmentModel, :carrier, 
  									:phoneNumber, :serialNumber,
  									:meid, :macAddress, :department,
  									:location, :assigneeName,
  									:status, :notes)
  end

end