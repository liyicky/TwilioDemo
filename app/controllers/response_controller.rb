class ResponseController < ApplicationController
  skip_before_action :verify_authenticity_token

  def receive
    @message = Message.new
    @message.body = params[:Body]
    @message.save
    respond_to :json
  end
end
