class VotesController < ApplicationController
    def create
      vote = params[:vote] # "up" or "down"
      ActionCable.server.broadcast("vote_channel", { vote: vote })
      head :ok
    end
  end
  