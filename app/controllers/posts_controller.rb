class PostsController < ApplicationController
  
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    #flash.now[:success] = "salut !"
    #@posts = Post.published.all
    #@posts = Post.offline.all
    #@posts = Post.all
    #@posts = Post.includes(:category).published.all
    @posts = Post.includes(:category, :tags).all


  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
     redirect_to posts_path, success: "l'article a été modifié avec succès"
    else
      render 'edit'
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to post_path(@post.id), success: "l'article a été créé avec succès"
  end

  def destroy
    @post.destroy
    redirect_to posts_path, success: "l'article a été supprimé avec succès"
  end
  
  private
  def post_params
    params.require(:post).permit(:name, :content, :slug)
  end
  def set_post
    @post = Post.find(params[:id])
  end


end
