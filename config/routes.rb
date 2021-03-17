Rails.application.routes.draw do

  # admin
  devise_for :admins
  namespace :admins do
    resources :customers,only: [:index,:show,:edit,:update]
    resources :items,only: [:index,:new,:create,:show,:edit,:update]
    resources :genres,only: [:index,:create,:update,:edit]
    resources :orders,only: [:index,:show,:update]
  end

  # customer
  devise_for :customers
  scope module: :customers do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    resources :customers,only: [:show,:edit,:update,:cancel,:bye]
    resources :items,only: [:index,:show]
    resources :cart_items,only: [:index,:create,:update,:destory,:all_destroy]
    resources :addresses,only: [:index,:create,:destory,:edit,:update]
    resources :orders,only: [:new,:create,:confirm,:thank,:index,:show]
  end
end
