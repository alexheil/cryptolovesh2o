class EmailMailerPreview < ActionMailer::Preview
  # Accessible from http://localhost:3000/rails/mailers/email_mailer/method_email

  def welcome_email
    EmailMailer.welcome_email(Email.first)
  end

end