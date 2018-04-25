class MessageCreationEventBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat_message)
    ActionCable
      .server
      .broadcast("MessagesChannel_#{chat_message['event_id']}",
                 user_id: chat_message['user_id'],
                 content: chat_message['content'],
                 event_id: chat_message['event_id'],
                 created_at: chat_message['created_at'].strftime('%H:%M')
               )

  end


end
