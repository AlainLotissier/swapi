Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'
   get 'movies/:id' => 'movie#show', as: 'movies'
   get 'characters/:id' => 'characters#index', as: 'characters'
   get 'planets/:id' => 'planets#index', as: 'planets'
   get 'starships/:id' => 'starships#index', as: 'starships'
   get 'search' => 'search#index', as: 'search'
end
