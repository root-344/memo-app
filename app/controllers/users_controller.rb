class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @email = user.email
    @posts = user.posts
    # @image = user.image
    @post = Post.find_by(params[:user_id])
  end
end
