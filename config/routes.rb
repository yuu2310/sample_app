Rails.application.routes.draw do
  
  get 'lists/new'
  post 'lists' => 'lists#create'
  # コントローラーにフォームのデータを送信するときは「POST」を使用する。
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => 'homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
