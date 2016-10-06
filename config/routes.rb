Rails.application.routes.draw do
  root to: 'members#index', as: 'root'

  get '/members', to: 'members#index', as: 'members'

  get '/members/new', to: 'members#new', as: 'new_member'
  post '/members', to: 'members#create'

  get '/members/:member_id', to: 'members#show', as: 'member'

  get '/members/:member_id/libraries', to: 'library_members#index', as: 'member_libraries'
  post '/libraries/:library_id/members', to: 'library_members#create', as: 'library_members'

  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'

  get 'libraries', to: 'libraries#index', as: 'libraries'

  get 'libraries/new', to: 'libraries#new', as: 'new_library'
  post 'libraries', to: 'libraries#create'

  get 'libraries/:id', to: 'libraries#show', as: 'library'

end

# No route matches [POST] "/members/2/libraries"
