class Driver < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :requests

  def acept_request(request_id)
    request = Request.find(request_id)
    self.requests << request
    request.set_status_acept
  end

  def progress_request(request_id)
    request = Request.find(request_id)
    request.set_status_progress
  end

end
