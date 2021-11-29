Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }
  resources :shows, only: %i[index show create update destroy]
  resources :promoters, only: %i[index show create update destroy], param: :slug
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
