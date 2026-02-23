class EventsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create, :edit, :update, :destroy ]
  before_action :is_admin?, only: [ :edit, :update, :destroy ]

  def index
    @events = Event.all.order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.admin = current_user
    if @event.save
      redirect_to event_path(@event), notice: "Événement créé avec succès !"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event), notice: "Événement mis à jour !"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path, notice: "Événement supprimé."
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :start_date, :duration, :price, :location)
  end

  def is_admin?
    @event = Event.find(params[:id])
    unless current_user == @event.admin
      flash[:alert] = "Accès refusé : vous n'êtes pas l'organisateur."
      redirect_to event_path(@event)
    end
  end
end
