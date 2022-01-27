class CommentsController < ApplicationController
  def create
    comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    if comment.save
      # redirect_to "/posts/#{comment.post.id}"
      # ActionCable.server.broadcast 'comment_channel', content: comment, user: comment.user, date: comment.created_at
      CommentChannel.broadcast_to @post, { comment: comment, user: comment.user, date: comment.created_at } #追加

    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, post_id: params[:post_id])
  end


end
