class SongsController < ApplicationController
  attr_reader :song

  def index
    @songs = Song.all.order(rate_avg: :desc).paginate page: params[:page], per_page: 10
  end

  def show
    @song = Song.find(params[:id])
    @review = Review.new
  	@reviews = song.reviews.order(created_at: :desc)
  end
end
