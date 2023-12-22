class CheckoutEmailMailer < ApplicationMailer

  default from: 'no-reply@flyblueskiesabove.com'

  def checkout_email(checkout)
    @checkout = checkout

    if Rails.env.production?
      mail(to: @checkout.email, bcc: ["no-reply@flyblueskiesabove.com", "connect@flytheblueskies.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Your Visit at Blue Skies Above")
    else
      mail(to: @checkout.email, bcc: ["no-reply@flyblueskiesabove.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Your Visit at Blue Skies Above")
    end
  end


end
