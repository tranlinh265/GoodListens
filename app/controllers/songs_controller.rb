class SongsController < ApplicationController
  def index
  	@songs = Song.all
  end

  def show
  	@song = Song.find(param[:id])
  end
end
