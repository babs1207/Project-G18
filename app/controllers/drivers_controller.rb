class DriversController < ApplicationController
  
  def index
    if params[:buscador].present? && params[:buscador].length >2
      @results = Request.where('starting_point like ?', "%#{params[:buscador]}%")
    else
      @viajes = Request.where(status: Request::STATUS[:initialized])
    end
  end

  def my_requests
    @requests = current_driver.requests
  end

  def acept
    current_driver.acept_request(params[:request_id])
    redirect_to my_requests_drivers_path
  end

  def progress
    current_driver.progress_request(params[:id])
    redirect_to my_requests_drivers_path
  end
  
end
