class LikesController < ApplicationController
  def index
    @like_users = Post.find(params[:id]).like_users
  end

  def create
    like = current_user.likes.create(post_id: params[:post_id])
    redirect_to posts_path, notice: "#{like.post.user.name}さんの投稿をいいねしました"
  end

  def destroy
    like = current_user.likes.find_by(id: params[:id]).destroy
    redirect_to posts_path, notice: "#{like.post.user.name}さんの投稿をいいね解除しました"
  end
end
