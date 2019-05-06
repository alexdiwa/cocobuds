class FollowsController < ApplicationController
# before_action :set_user, only: [:create, :destroy]
    def create
        id = params[:id]
        @user = User.find(id)
        current_user.followers << @user
        redirect_to user_path(id)
    end
    
    def destroy
        id = params[:id]
        @user = User.find(id)
        Follow.where(follower_id: @user.id, followee_id: current_user.id).first.destroy
        redirect_to user_path(id)
    end

    #not being called!

    # private
    # def set_user
    #     id = params[:id]
    #     @user = User.find(id)
    # end
end