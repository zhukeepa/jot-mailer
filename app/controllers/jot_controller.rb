class JotController < ApplicationController
  skip_before_filter  :verify_authenticity_token

  def send_mail
    mail_params = params[:mail]
    recipient = mail_params[:to]
    subject = mail_params[:subject]
    body = mail_params[:body]
    
    JotSender.textbox_email(recipient, subject, body).deliver_later

    respond_to do |f| 
      f.js { render text: "Success" }
    end
  end
end
