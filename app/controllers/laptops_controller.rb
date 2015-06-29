class LaptopsController < ApplicationController
def index
  @laptop = Equipment.where(equipmentType: "Laptop")
end

def show
  @laptop = Equipment.where(equipmentType: "Laptop").find(params[:id])
end

def new
end

def edit
  @laptop = Equipment.where(equipmentType: "Laptop").find(params[:id])
end

def create
  @laptop = Equipment.new(laptop_params)
 
  @laptop.save
  redirect_to laptop_path(@laptop)
end

def update
  @laptop = Equipment.where(equipmentType: "Laptop").find(params[:id])
 
  if @laptop.update(laptop_params)
    redirect_to laptop_path(@laptop)
  else
    render 'edit'
  end
end

def destroy
  @laptop = Equipment.where(equipmentType: "laptop").find(params[:id])
  @laptop.destroy
 
  redirect_to laptops_path
end

private
  def laptop_params
    params.require(:laptop).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :jslgTag, 
  									:manufacturerTag, :serialNumber,
  									:osType, :hostName, :ram, :hdd,
  									:department, :location, :assigneeName,
  									:status, :notes)
  end

end
