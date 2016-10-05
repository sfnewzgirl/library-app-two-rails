Rails.application.routes.draw do
  root to: 'members#index', as: 'root'

  get '/members', to: 'members#index', as: 'members'

  get '/members/new', to: 'members#new', as: 'new_member'
  post '/members', to: 'members#create'

  get '/members/:id', to: 'members#show', as: 'member'

  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

end
