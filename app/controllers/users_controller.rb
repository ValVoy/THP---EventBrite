class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_current_user?

  def show
    @user = User.find(params[:id])
    @events = @user.administered_events
  end

  private

  def is_current_user?
    @user = User.find_by(id: params[:id])
    redirect_to root_path, alert: "Accès refusé" unless current_user == @user
  end
end
