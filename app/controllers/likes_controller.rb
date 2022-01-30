class LikesController < ApplicationController
    before_action :move_to_index, only: [:create, :destroy]
    before_action :set_post, only: [:create, :destroy]
  
    def create
      @like = Like.create(post_id: @post.id, user_id: current_user.id)
    end
  
    def destroy
      @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
      @like.destroy
    end
  
    private
  
    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end
  
    def set_post
      @post = Post.find(params[:post_id])
    end
end
