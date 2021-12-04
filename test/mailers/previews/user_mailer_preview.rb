class UserMailerPreview < ActionMailer::Preview
  # Accessible from http://localhost:3000/rails/mailers/user_mailer/method_email

  def subscription_success_email
    UserMailer.subscription_success_email(User.first, Subscription.first)
  end

  def user_active_email
    UserMailer.user_active_email(User.first)
  end

  def user_inactive_email
    UserMailer.user_inactive_email(User.first)
  end

  def purchase_success_email
    UserMailer.purchase_success_email(User.first, Purchase.first)
  end

  def purchase_active_email
    UserMailer.purchase_active_email(User.first, Purchase.first)
  end

  def purchase_inactive_email
    UserMailer.purchase_inactive_email(User.first, Purchase.first)
  end

end