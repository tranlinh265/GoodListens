class RelationshipsController < ApplicationController
  before_action :find_active_relationship

  attr_reader :active_rela

  def create
    @user = User.find params[:followed_id]
    current_user.follow @user
    respond_to do |format|
      format.js
    end
    @relationship_destroy = active_rela.find_by followed_id: @user.id
  end

  def destroy
    @user = Relationship.find_by(id: params[:id]).followed
    current_user.unfollow @user
    respond_to do |format|
      format.js
    end
    @relationship_build = active_rela.build
  end

  private

  def find_active_relationship
    @active_rela = current_user.active_relationships
  end
end
