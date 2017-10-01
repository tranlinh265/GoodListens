class SongsController < ApplicationController
  def index
  	@songs = Song.all.order(rate_avg: :desc).paginate page: params[:page], :per_page => 10
  end

  def show
  	@song = Song.find(params[:id])
  	@reviews = @song.review.order(created_at: :desc)
  end
end
