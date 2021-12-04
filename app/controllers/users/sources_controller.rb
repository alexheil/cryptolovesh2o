class Users::SourcesController < ApplicationController

  before_action :authenticate_user!
  before_action :correct_source_user

  def update
    if Rails.env.production?
      Stripe.api_key = ENV['STRIPE_API_KEY']
    else
      Stripe.api_key = "sk_test_51HPXXkIvhiSXzhOGeV4VKjTS9IRWxKu5TkGStdnRqWDDIMiWXBTmV1gyXL21HOXpCY2GRBMuMPvbA59ARKbG881a00QExFmNJ6"
    end
    
    @customer = Stripe::Customer.retrieve(current_user.customer_id)

    redirection = nil
    if params[:url].present?
      redirection = Base64.decode64(params[:url].to_s)
    end

    token = params[:stripeToken]
    if token.present?
      source = Stripe::Customer.create_source(
        @customer.id,
        {
          source: token,
        }
      )
      source.save

      if source.save
        @customer.default_source = source.id
        @customer.save

        if @customer.save

          card = Stripe::Customer.retrieve_source(
            @customer.id,
            @customer.default_source,
          )
          card.name = params[:user][:cardholder]
          card.save

          if card.save
            if redirection.present?
              path = redirection
            else
              path = user_billing_path(current_user)
            end
            redirect_to path
          else
            return_because_fail(@package)
          end
        else
          return_because_fail(@package)
        end
      else
        return_because_fail(@package)
      end
    else
      return_because_fail(@package)
    end     

  end

  private

    def correct_source_user
      @user = User.friendly.find(params[:user_id])
      unless @user == current_user
        redirect_to root_url
        flash.now[:alert] = "This is not your page."
      end
    end

end