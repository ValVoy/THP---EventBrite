class AttendanceMailer < ApplicationMailer
  default from: ENV["GMAIL_LOGIN"] || "no-reply@eventbrite-like.fr"

  def new_attendee_email(attendance)
    @attendance = attendance
    @event = attendance.event
    @admin = @event.admin
    @attendee = attendance.user

    mail(to: @admin.email, subject: "Nouveau participant pour l'événement : #{@event.title}")
  end
end
