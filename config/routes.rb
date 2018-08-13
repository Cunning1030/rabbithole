Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :posts
  get 'main_pages/about'

  get 'main_pages/contact'

  get 'main_pages/index'

  root 'main_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
