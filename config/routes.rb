Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/show'
  root 'users#new'
  get 'users/new'
  resources :users do
  	resources :projects do
  		resources :tasks
  	end
  end
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
