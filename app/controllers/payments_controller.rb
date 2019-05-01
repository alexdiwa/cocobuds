class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def stripe
        payment_id = params[:data][:object][:payment_intent]
        payment = Stripe::PaymentIntent.retrieve(payment_id)
        user_id = payment.metadata.user_id
        render json: ""
    end

    def success
        current_user.stripe_payment = "PAID"
        current_user.save
    end
end