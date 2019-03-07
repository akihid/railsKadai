class TorisController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end
  
  def create
    @post = Post.new(set_param)
    if @post.save
      redirect_to toris_path , notice:'新規登録完了'
    else
      render 'confirm'
    end
  end
  
  def confirm
    @post = Post.new(set_param)
  end
  
  
  
  private
  
  def set_param
    params.require(:post).permit(:content)
  end
end
