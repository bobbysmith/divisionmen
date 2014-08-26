class BlogsController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show]

  def index
    @blogs = Blog.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    %w{title article}.each do |param|
      if params[:blog][param].blank?
        params[:blog][param].delete
      end
    end

    @blog.update(blog_params)
    redirect_to blogs_path
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.delete
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :article)
  end

end
