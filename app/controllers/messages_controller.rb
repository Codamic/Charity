class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      render "success"
    else
      @errors = @message.errors
      render "error"
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :website, :company, :email, :message)
  end
end
