class MainController < ApplicationController
  def index
  	@desktop = Equipment.all
  end
end
