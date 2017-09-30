class ReviewsController < ApplicationController
  def index
  end
  def create
  	@review = Review.new(title: review_params[:title],content: review_params[:content],song_id: review_params[:song_id],user_id: review_params[:user_id])
  	if @review.save
  		redirect_to Song.find(review_params[:song_id])
  	else
  		redirect_to root_path
  	end
  end
  def review_params
  	params.require(:review).permit(:title, :content,:song_id,:user_id)
  end
end
