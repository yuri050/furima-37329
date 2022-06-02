Rails.application.routes.draw do
  devise_for :users
  root 'items#index'
  #ルートパスの設定　
  #ordersの一覧ページへ遷移するように設定するため、ordersコントローラーのindexアクション
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end