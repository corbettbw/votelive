class Vote < ApplicationRecord
    validates :vote_type, presence: true, inclusion: { in: ['up', 'down'] }
  
    def self.counts
      {
        upvotes: where(vote_type: 'up').count,
        downvotes: where(vote_type: 'down').count
      }
    end
  end
  