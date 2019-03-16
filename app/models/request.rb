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
    

  before_create :set_default_status

  def set_default_status
    self.status = STATUS[:initialized]
  end

  def set_status_acept
    self.status = STATUS[:acepted]
    self.save
  end
end
