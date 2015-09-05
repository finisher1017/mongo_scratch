class MainController < ApplicationController
  def index
  	@equip = Equipment.all
  end
end
