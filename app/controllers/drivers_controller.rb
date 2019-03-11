class DriversController < ApplicationController
  
  def index
    if params[:buscador].present? && params[:buscador].length >2
      @results = Request.where('starting_point like ?', "%#{params[:buscador]}%")
    else
      @viajes = Request.all
    end
  end
  
end
