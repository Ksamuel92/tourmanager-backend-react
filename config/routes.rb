Rails.application.routes.draw do
  devise_for :users
  resources :shows, only: %i[create update destroy]
  resources :promoters, only: %i[create update destroy], params: :slug
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
