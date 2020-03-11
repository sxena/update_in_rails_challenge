class BlogController < ApplicationController
  def index
    @blog_posts = BlogPost.all
  end

  def show
    @blog_post = BlogPost.find(params[:id])
  end
  def title
    @blog_post = BlogPost.title
  end
  def content
    @blog_post = BlogPost.content
  end
  def destroy
    @blog_post = BlogPost.find(params[:id]).destroy
    redirect_to '/index'
  end
  def submit
    @blog_post = BlogPost.find(params[:id]).submit
    redirect_to '/blog/id'
  end
  def edit
    @blog_post = BlogPost.find(params[:id])
  end
  def update
    @blog_post = BlogPost.find(params[:id])

    @blog_post.update(
      title: params[:blog_post][:title],
      content: params[:blog_post][:content]
    )
      redirect_to one_blog_path(@blog_post)
  end
  def label
  end
  def new
  end

  def create
    @blog_posts = BlogPost.create(
      title: params[:title],
      content: params[:content]
    )
    if @blog_posts.valid?
      redirect_to '/index'
    else
      render action: :new
    end

  end
end
