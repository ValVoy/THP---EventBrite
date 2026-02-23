class UserMailer < ApplicationMailer
  default from: ENV['GMAIL_LOGIN'] || 'no-reply@eventbrite-like.fr'

  def welcome_email(user)
    @user = user 
    @url  = 'http://localhost:3000/login' 
    mail(to: @user.email, subject: 'Bienvenue sur notre plateforme !') 
  end
end