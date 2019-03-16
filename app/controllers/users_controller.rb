class UsersController < ApplicationController
  
  def delivered
    current_user.delivered_request(params[:id])
    redirect_to requests_path
  end
  
  def cancel
    current_user.cancel_request(params[:id])
    redirect_to requests_path
  end
end
