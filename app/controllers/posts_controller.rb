class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Post.order(created_at: :desc).page(params[:page])
  end

  def show
    @comments = @post.comments.order(created_at: :desc)
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      redirect_to posts_path, notice: '投稿を保存しました'
    else
      render :new
    end
  end

  def edit;end

  def update
    if @post.update(post_params)
      redirect_to posts_path, notice: '投稿を更新しました'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path, notice: '投稿を削除しました'
  end

  private

  def post_params
    params.require(:post).permit(
      :content,
      :picture,
      :picture_cache,
      :remove_picture
    )
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
