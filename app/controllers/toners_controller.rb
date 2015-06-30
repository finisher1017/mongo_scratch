class TonersController < ApplicationController
  def index
  @toner = Equipment.where(equipmentType: "Toner")
end

def show
  @toner = Equipment.where(equipmentType: "Toner").find(params[:id])
end

def new
end

def edit
  @toner = Equipment.where(equipmentType: "Toner").find(params[:id])
end

def create
  @toner = Equipment.new(toner_params)
 
  @toner.save
  redirect_to toner_path(@toner)
end

def update
  @toner = Equipment.where(equipmentType: "Toner").find(params[:id])
 
  if @toner.update(toner_params)
    redirect_to toner_path(@toner)
  else
    render 'edit'
  end
end

def destroy
  @toner = Equipment.where(equipmentType: "Toner").find(params[:id])
  @toner.destroy
 
  redirect_to toners_path
end

private
  def toner_params
    params.require(:toner).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :color, :replacementId,
  									:quantity, :notes )
  end
end
