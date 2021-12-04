class EmailMailer < ApplicationMailer
  
  def welcome_email(email)
    @email = email
    mail(to: @email.email, subject: 'Welcome to the Ninth Digital newsletter!')
  end

  def email_blast(email)
    @email = email
    mail(to: @email.email, subject: 'Ninth Digital')
  end

end