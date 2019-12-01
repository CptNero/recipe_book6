Rails.application.routes.draw do
  scope "(:locale)", locale: /en|hu/ do
    get 'welcome/index'
    resources :recipes do
      resources :comments, :tags
    end

    resources :tags do
      resources :recipes
    end
    root 'welcome#index'
    get '/:locale' => 'dashboard#index'

    devise_for :users, controllers: {
        sessions: 'users/sessions'
    }

  end
end
