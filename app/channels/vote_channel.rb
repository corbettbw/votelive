class VoteChannel < ApplicationCable::Channel
  def subscribed
    stream_from "vote_channel"
  end

  def receive(data)
    ActionCable.server.broadcast("vote_channel", data)
  end
end
