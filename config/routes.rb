Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#homepage'

  get 'mood/new', to: 'mood#new'
  post 'mood/new', to: 'mood#create'

  get 'food/new', to: 'food#new'
  post 'food/new', to: 'food#create'

  get 'habits/new', to: 'habits#new'
  post 'habits/new', to: 'habits#create'
end
