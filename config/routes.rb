Rails.application.routes.draw do
    devise_for :admins
    resources :library, only: :show
    resources :books, only: [:index, :show, :new, :create]
    get 'locale/:name' => 'application#locale', as: 'change_locale'
    root to: 'welcome#index'
    match "*path", to: "application#catch_404", via: :all
end
