class VoteChannel < ApplicationCable::Channel
  def subscribed
    stream_from "vote_channel"
    # Send current vote counts when a user subscribes
    ActionCable.server.broadcast("vote_channel", Vote.counts)
  end
end
