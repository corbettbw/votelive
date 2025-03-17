class VotesController < ApplicationController
    skip_forgery_protection only: [:create]
  
    def create
      vote_type = params[:vote] # "up" or "down"
      Vote.create!(vote_type: vote_type)
  
      ActionCable.server.broadcast("vote_channel", {
        vote_type: vote_type,
        timestamp: Time.now.utc
      })
  
      head :ok
    end
  end
  