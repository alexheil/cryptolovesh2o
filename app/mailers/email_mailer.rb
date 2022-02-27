class EmailMailer < ApplicationMailer
  
  def welcome_email(email)
    @email = email
    mail(to: @email.email, subject: 'Welcome to the Crypto Loves H2O newsletter!')
  end

  def email_blast(email)
    @email = email
    mail(to: @email.email, subject: 'cryptolovesh2o')
  end

end