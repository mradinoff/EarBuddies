class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "MessagesChannel_#{params['event_id']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create(data)
    user = User.find(data['user_id'])
    user.messages.create(
      content: data['content'],
      user_id: data['user_id'],
      event_id: data['event_id'],
      user_name: data['user_name'],
      event_name: data['event_name'],
    )
  end
end
