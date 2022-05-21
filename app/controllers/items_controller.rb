class ItemsController < ApplicationController
  def index
    @items = item.all
    #indexアクションをコントローラーに定義
    #@itemsというインスタンス変数に、itemsテーブルのレコードをすべて代入
  end
end
