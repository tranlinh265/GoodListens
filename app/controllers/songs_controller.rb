class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def show
  	@song = Song.find(params[:id])
  	@reviews = @song.review.order(created_at: :desc)
  end
end
