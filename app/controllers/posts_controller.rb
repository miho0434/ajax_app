class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
    #メモを降順、つまり、投稿の新しい順に表示
  end

  #tooページで行うので不要
  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    #↑新たに投稿されたメモの内容を変数postに格納

    #redirect_to action: :index 
    #メモを保存した後にトップページへリダイレクト

    render json:{ post: post }
    #13行目で定義した変数postの値を、postというキーとセットでJSON形式でJavaScriptに送信
  end
end
