class ReportsController < ApplicationController
  def show
    @votes = Vote.group(:vote_type).count
  end
end
