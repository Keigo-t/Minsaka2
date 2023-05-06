Rails.application.routes.draw do

# ユーザー
devise_for :users,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
scope module: :public do
    root to: 'homes#top'
    get 'about' => "homes#about"
    get 'search' => 'searches#search'
    resources :users, only: [:index, :show, :edit, :create, :update, :destroy] do
      resources :relationships, only: [:index, :create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end
    resources :posts do
      resources :comments, only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]
    end
  end

# 管理者
devise_for :admin, skip: [:passwords] ,controllers: {
  sessions: "admin/sessions"
}
namespace :admin do
    root to: 'posts#index'
    resources :leagues, only: [:new, :create, :edit, :update, :destroy]
      resources :teams, only: [:index, :show, :new, :create, :edit, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show, :create, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
