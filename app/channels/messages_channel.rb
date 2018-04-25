class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "MessagesChannel_#{params['event_id']}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def create(data)
    event = Event.find(data['event_id'])
    event.messages.create(
      content: data['content'],
      user_id: data['user_id'],
      event_id: data['event_id']
    )
  end
end
