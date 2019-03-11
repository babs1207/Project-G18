class HomesController < ApplicationController
  
  def index
    @start = params[:starting_point]
    @end = params[:end_point]
    # calcular distancia con geocoder @distancia
    @distancia = 1000 
    @tarifa = 200
    @envio=0
    @envio = @distancia * @tarifa
  end

end

