Rails.application.routes.draw do
  root 'creature#index'

  # get '/about', to: 'static_pages#about'

  resources :creatures
end
