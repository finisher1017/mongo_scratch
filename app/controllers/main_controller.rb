class MainController < ApplicationController
  include ActionController::MimeResponds
  include ActionController::ImplicitRender
  before_action :index, only: [:index, :create, :update, :destroy]
  respond_to :html, :js
  def index
  	@equip = Equipment.all

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end

  def desktop
  	@equip = Equipment.where(equipmentType: "Desktop")

  	respond_to do |format|
  		format.html
  		format.js
  	end
  end
end
