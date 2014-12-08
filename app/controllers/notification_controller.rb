class NotificationController < ApplicationController
  skip_before_action :verify_authenticity_token

  def notify
    sid = Rails.application.secrets.twilio_account_sid
    auth = Rails.application.secrets.twilio_auth_token
    @client = Twilio::REST::Client.new sid, auth
    message = @client.messages.create from: "2017305145", to: "9292451209", body: "Howdy from Trello Test"
    render plain: message.status
  end
end
