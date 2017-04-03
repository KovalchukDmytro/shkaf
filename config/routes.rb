Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'index#index'
get 'index/index.html'=>'index#index'
get 'index/index'=>'index#index'
get 'index/index'

get 'recall/recall.html'=>'recall#recall'
get 'recall/recall'=>'recall#recall'
get 'recall/recall'


resources :recall
resources :index
resources :login
resources :admin
get 'login' =>'login#index'
end
