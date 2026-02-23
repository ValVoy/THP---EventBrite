class UsersController < ApplicationController
  # 1. Devise vérifie que la personne est connectée
  before_action :authenticate_user!, only: [:show]
  # 2. Notre méthode personnalisée vérifie que c'est bien le bon profil
  before_action :is_current_user?, only: [:show]

  def show
    @user = User.find(params[:id])
    # On récupère tous les événements dont cet utilisateur est l'administrateur
    @events = @user.administered_events
  end

  private

  def is_current_user?
    @user = User.find(params[:id])
    unless current_user == @user
      flash[:alert] = "Accès refusé : vous ne pouvez voir que votre propre profil."
      redirect_to root_path
    end
  end
end