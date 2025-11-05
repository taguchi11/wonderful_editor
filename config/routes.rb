Rails.application.routes.draw do
  # devise_for :users
  # mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :articles, only: [:index, :show]
    end
  end
end
