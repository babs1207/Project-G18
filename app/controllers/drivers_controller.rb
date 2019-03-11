class DriversController < ApplicationController
  
  def index
    @viajes = Request.all
  end
end
