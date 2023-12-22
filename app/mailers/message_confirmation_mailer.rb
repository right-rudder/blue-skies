class MessageConfirmationMailer < ApplicationMailer

  default from: 'no-reply@flyblueskiesabove.com'

  def message_confirmation_email(message)
    @message = message
    
    if Rails.env.production?
      mail(to: @message.email, bcc: ["no-reply@flyblueskiesabove.com", "connect@flytheblueskies.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Thank You For Contacting Fly The Blue Skies Professional Flight Instruction")
    else
      mail(to: @message.email, bcc: ["no-reply@flyblueskiesabove.com"], reply_to: "connect@flytheblueskies.com", subject: "✈️ Thank You For Contacting Fly The Blue Skies Professional Flight Instruction")
    end
  end

end
