class PrinterdrumsController < ApplicationController
def index
  @printerdrum = Equipment.where(equipmentType: "Drum")
end

def show
  @printerdrum = Equipment.where(equipmentType: "Drum").find(params[:id])
end

def new
end

def edit
  @printerdrum = Equipment.where(equipmentType: "Drum").find(params[:id])
end

def create
  @printerdrum = Equipment.new(drum_params)
 
  @printerdrum.save
  redirect_to printerdrum_path(@printerdrum)
end

def update
  @printerdrum = Equipment.where(equipmentType: "Drum").find(params[:id])
 
  if @printerdrum.update(drum_params)
    redirect_to printerdrum_path(@printerdrum)
  else
    render 'edit'
  end
end

def destroy
  @printerdrum = Equipment.where(equipmentType: "Drum").find(params[:id])
  @printerdrum.destroy
 
  redirect_to printerdrums_path
end

private
  def drum_params
    params.require(:printerdrum).permit(:id, :equipmentType, :manufacturer,
  									:equipmentModel, :drumId,
  									:quantity, :notes )
  end
end
