class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, only: [:index, :create]
  before_action :same_user_check, only: [:index]

  def index
    @messages = @conversation.messages.order(:created_at)

    @messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)

    @message = @conversation.messages.new
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user

    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private
    def set_conversation
      @conversation = Conversation.find(params[:conversation_id])
    end

    def message_params
      params.require(:message).permit(:body, :user_id)
    end

    def same_user_check
      if @conversation.receiver_id == @conversation.sender_id
        redirect_to user_path(current_user.id), notice: 'You can\'t send a message to yourself!'
      end
    end
end