class ReviewsController < ApplicationController
  def index
  end
  def create
  	@review = Review.new(title: review_params[:title],content: review_params[:content],song_id: review_params[:song_id],user_id: review_params[:user_id],rate_score: review_params[:rate])
  	if @review.save
      song = Song.find(review_params[:song_id])
      song.update_attributes( :rate_avg => ((song.sum_rate*song.rate_avg + rate_rv)/(song.sum_rate + 1)), :sum_rate => (song.sum_rate + 1))
  		redirect_to song
  	else
  		redirect_to root_path
  	end
  end
  def review_params
  	params.require(:review).permit(:title, :content,:song_id,:user_id,:rate)
  end
end
