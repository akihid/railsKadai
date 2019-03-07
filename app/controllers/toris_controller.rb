class TorisController < ApplicationController
  
  before_action :set_post , only:[:edit , :update , :destroy]
  
  def index
    @posts = Post.all
    if params[:back]
      @post = Post.new(set_param)
    else
      @post = Post.new
    end
    
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
    binding.pry
    @post = Post.new(set_param)
    
    if @post.invalid?
      @posts = Post.all
      render :index
    end
  end
  
  def edit
  end
  
  def update
    if @post.update(set_param)
      redirect_to toris_path , notice:'編集完了'
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to toris_path , notice:'削除完了'
  end


  private
  
  def set_param
    params.require(:post).permit(:content)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
end
