class Request < ApplicationRecord
  belongs_to :user
  belongs_to :driver, optional: true
  belongs_to :payment, optional:true
  has_many_attached :documents

  STATUS = {
    initialized: 'Iniciada',
    acepted: 'Aceptada',
    in_progress: 'En progreso', 
    delivered: 'Entregada',
    cancel: 'Cancelada'
  }
    
  BASE_PRICE = 1000
  before_create :set_default_status, :set_price

  def set_default_status
    self.status = STATUS[:initialized]
  end

  def set_status_acept
    self.status = STATUS[:acepted]
    self.save
  end

  def set_status_progress
    self.status = STATUS[:in_progress]
    self.save
  end

  def set_status_delivered
    self.status = STATUS[:delivered]
    self.save
  end

  def set_status_cancel
    self.status = STATUS[:cancel]
    self.save
  end

  def set_price
    distance = get_distance
    if distance > 1
      self.price = 750 * distance
    else
      self.price = BASE_PRICE
    end 
  end

  def get_distance
    list_start = Geocoder.search(self.starting_point)
    coordinate_start = list_start.first.coordinates

    list_end = Geocoder.search(self.end_point)
    coordinate_end = list_end.first.coordinates

    (Geocoder::Calculations.distance_between(coordinate_start, coordinate_end)).round
  end

  def self.created_by_day
    Request.group_by_day(:created_at).count
   end

end
