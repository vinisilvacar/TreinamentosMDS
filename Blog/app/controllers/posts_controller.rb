class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to home_path
    else
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update_attributes(post_update_params)
      render :show
    else
      redirect_to home_path
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to home_path
  end

  #Encapsulamento
  private
    def post_params
    #Funcao para definir quais os parametros eu vou querer passar
      params.require(:post).permit(:title, :content)
    end
  private
    def post_update_params
      params.require(:post).permit(:title, :content)
    end
end
