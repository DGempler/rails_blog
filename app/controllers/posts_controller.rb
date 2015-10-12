class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new post_params
    if @post.save
      redirect_to @post
    else
      flash.now[:alert] = "There was a problem saving your post"
      render :new
    end
  end
  def show
    @post = post
  end
  def edit
    @post = post
  end
  def update
    post.update_attributes post_params
    if post.save
      redirect_to @post
    else
      flash.now[:alert] = 'There was a problem updating your post'
      render :edit
    end
  end
  def destroy
    post.destroy
    redirect_to :root, notice: 'Your post has been deleted'
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :author, tag_ids: [])
  end
  def post
    @post ||= Post.find(params[:id])
  end
end