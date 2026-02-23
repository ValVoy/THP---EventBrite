class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    @event = Event.find(params[:event_id])
    @attendance = Attendance.new(event: @event, user: current_user, stripe_customer_id: "test_#{Time.now.to_i}")
    if @attendance.save
      redirect_to @event, notice: "Vous êtes inscrit !"
    else
      redirect_to @event, alert: "Erreur lors de l'inscription."
    end
  end
end
