class ItemsController < ApplicationController

  def index
    @items = item.all
    #indexアクションをコントローラーに定義
    #@itemsというインスタンス変数に、itemsテーブル代入
  end

end
