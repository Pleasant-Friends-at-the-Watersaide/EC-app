Rails.application.routes.draw do
  
  #　会員側ののルーティング
  devise_for :customers, controllers: {
    sessions:      'customers/sessions',
    passwords:     'customers/passwords',
    registrations: 'customers/registrations'
  }

  scope module: :customers do
    root to: 'homes#top'
    get 'about' => 'homes#about'
    resources :customers, only: [:edit, :update]
    get   'customers/my_page' => 'customers#show'
    get   'customers/cancel'  => 'customers#cancel'
    patch 'customers/bye'     => 'customers#bye'
    resources :addresses  , only: [:index, :create, :destroy, :edit, :update]
    resources :items      , only: [:index, :show]
    resources :cart_items , only: [:index, :create, :update, :destroy]
    delete 'cart_items/all_destroy' => 'cart_items#all_destroy'
    resources :orders, only: [:index, :show, :new, :create]
    post 'orders/confirm' => 'orders#confirm'
    get  'orders/thank'   => 'orders#thank'
  end
  
  #管理者側のルーティング
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
  }
  
  namespace :admins do
    root to: 'homes#top'
    resources :customers    , only: [:index, :edit, :update, :show]
    resources :items        , only: [:index, :new, :create, :show, :edit, :update]
    resources :orders       , only: [:show, :update]
    resources :order_details, only: [:update]
    resources :genres       , only: [:index, :create, :edit, :update]
  end
end
