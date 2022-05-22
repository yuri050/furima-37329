class ItemsController < ApplicationController

  def index
    @items = Item.all
    #indexアクションをコントローラーに定義
    #@itemsというインスタンス変数に、itemsテーブル代入
  end

end
