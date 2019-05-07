class FollowsController < ApplicationController
# before_action :set_user, only: [:create, :destroy]
include ActionView::Helpers::UrlHelper

    def index
        @saved = current_user.followers.includes(:skills)
        @followed_by = current_user.followees
        @mutuals = []
        @followed_by.each do |followee|
            @mutuals << followee if @saved.include?(followee)
        end
    end

    def create
        id = params[:id]
        @user = User.find(id)
        current_user.followers << @user unless current_user.followers.include?(@user)
        redirect_back(fallback_location: user_path(id))
    end
    
    def destroy
        id = params[:id]
        @user = User.find(id)
        Follow.where(follower_id: @user.id, followee_id: current_user.id).first.destroy
        redirect_back(fallback_location: user_path(id))
    end

    #not being called!

    # private
    # def set_user
    #     id = params[:id]
    #     @user = User.find(id)
    # end
end