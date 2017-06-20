class EmailsController < ApplicationController

  def index
  end

  def send_email

    mailgun = Mailgun::Client.new(ENV['MAILGUN_API_KEY'])

    body = {
      from: 'admin@likelion.org',
      to: params[:email],
      subject: params[:subject],
      text: params[:description]
    }

    mailgun.send_message(ENV['MAILGUN_DOMAIN'], body)

    redirect_to '/'
  end
end
