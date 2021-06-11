class PostsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    render json: { posts: Post.all }
  end

  def create
    new_post = Post.create(content: params[:content], user_id: params[:user_id])
    
    render json: { post: new_post }
  end

  def delete
    post_deleted = Post.find(params[:id]).destroy;

    render json: {post_deleted: post_deleted}
  end

  def modify
    post_updated = Post.update(params[:id], content: params[:content])
    
    render json: {post_updated: post_updated}
  end

end
