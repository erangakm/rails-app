class BlogpostsController < ApplicationController
  def new
    @user = current_user
    @blogpost = Blogpost.new
  end

  def create
    @user = current_user
    @blogpost = @user.blogposts.create(blogpost_params)
    if @blogpost.save
      redirect_to user_blogpost_path(@user, @blogpost)
    else
      render 'new'
    end
  end

  def index
    # @blogposts = Blogpost.all
    @blogposts = current_user.blogposts
    @user = current_user
  end

  private

  def blogpost_params
    params.require(:blogpost).permit(:title)
  end

  def show
    @user = current_user
    @blogpost = Blogpost.find(params[:id])
  end
end
