class ListsController < ApplicationController
  
  def new
# Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new  
  end
  
  def create
    #データを受け取り新規登録するためのインスタンス作成
    list = List.new(list_params)
    #データをデータベースに保存するためのsaveメソッド実行
    list.save
    #トップ画面へリダイレクト
    redirect_to top_path
  end

  def index
  end

  def show
  end

  def edit
  end
  
   private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
#params: formから送られてくるデータはparamsの中に入っています。
# require: 送られてきたデータの中からモデル名を指定し、データを絞り込みます。
# permit: requireで絞り込んだデータの中から、保存を許可するカラムを指定します。
end
