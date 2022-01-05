Rails.application.routes.draw do
  namespace :api, defaults: { format: :json} do
  resources :shows, only: %i[index show create update destroy]
  resources :promoters, only: %i[index show create update destroy]
  end
  
  devise_for :users, defaults: {format: :json}, path: '', path_names: {
    sign_in: 'api/login',
    sign_out: 'api/logout',
    registration: 'api/signup'
  },
  controllers: {
    sessions: 'sessions',
    registrations: 'registrations'
}
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
