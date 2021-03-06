class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    new_user = User.create(username: params[:username], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    
    render json: { user: new_user }
  end
end
