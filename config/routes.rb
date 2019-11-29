Rails.application.routes.draw do
  get 'welcome/index'
  resources :recipes do
    resources :comments, :tags
  end

  resources :tags do
    resources :recipes
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }
  end

  get '/:locale' => 'dashboard#index'


  root 'welcome#index'

  post '/switch_locale', to: 'application#switch_locale', as: 'switch_locale'





end
