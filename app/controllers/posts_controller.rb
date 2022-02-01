class PostsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @posts = Post.all
  end

  def show
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    # 画像複数枚投稿実装の時使用
    # if params[:item][:image_ids]
    #   params[:item][:image_ids].each do |image_id|
    #     image = @item.images.find(image_id)
    #     image.purge
    #   end
    # end
    if @post.update(post_params)
      redirect_to post_path
    else
      render :edit
    end
  end

  def destroy
    redirect_to posts_path if @post.destroy
  end

  def search
    @posts = Post.search(params[:keyword])
  end

  private

  def post_params
    params.require(:post).permit(:genre_id, :title, :detail, :date, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_item
    @post = Post.find(params[:id])
  end
end
