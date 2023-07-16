class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    Rails.logger.debug params.inspect
    render plain: params[:user]
  end
end