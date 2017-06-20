Rails.application.routes.draw do

  root 'emails#index'
  post '/emails/send', to: 'emails#send_email'
end
