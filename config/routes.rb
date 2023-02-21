Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: 'sessions'}

  resources :users, only: %i[index]
 
  resources :categories, only: %i[index show new create destroy] do
    resources :transactions, only: %i[new create destroy]
  end

  resources :starts, only: %i[index]
  root 'start#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
