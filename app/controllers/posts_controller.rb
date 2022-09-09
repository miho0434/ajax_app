class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
    #メモを降順、つまり、投稿の新しい順に表示
  end

  #tooページで行うので不要
  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index  # 追記する
    #メモを保存した後にトップページへリダイレクト
  end
end
