class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: %i[facebook]
  has_many :requests, dependent: :destroy
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name
    end
   end

   def delivered_request(request_id)
    request = Request.find(request_id)
    request.set_status_delivered
  end

  def cancel_request(request_id)
    request = Request.find(request_id)
    request.set_status_cancel
  end

  def paid_request(request_id)
    request = Request.find(request_id)
    request.set_paid
  end

end
