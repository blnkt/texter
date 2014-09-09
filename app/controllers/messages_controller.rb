class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
    @message = Message.new
  end

  def create
    @phones = message_params[:to].slice(0..-2)
    @phones.each do |phone|
      @message = Message.new(to: phone, from: message_params[:from], body: message_params[:body], media_url: message_params[:media_url])
      if @message.save
        flash[:notice] = "Your message was sent!"
      else
        render 'new'
      end
    end
    redirect_to messages_path
  end

  def show
    @message = Message.find(params[:id])
  end

private
  def message_params
    params.require(:message).permit({to: []}, :from, :body, :media_url)
  end
end
