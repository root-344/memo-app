module ApplicationCable
  class Connection < ActionCable::Connection::Base
    @post = post.find(params[:post_id]) 
    stream_for @post 
    # stream_from "comment_channel" 
  end
end
