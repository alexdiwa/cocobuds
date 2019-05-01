class PagesController < ApplicationController
    def show 
        render template: "pages/#{params[:page]}"
       
        stripe_session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        line_items: [{
        name: "donation",
        description: "donating_to_us",
        amount: 1000,
        currency: 'aud',
        quantity: 1,
        }],
        payment_intent_data: {
            metadata: {
              user_id: current_user.id
            }
          },
            success_url: 'http://localhost:3000/payments/success',
            cancel_url: 'http://localhost:3000/cancel',
        )
       @stripe_session_id = stripe_session.id
      

    end

end