Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'
   get 'movies/:id' => 'movie#show', as: 'movies'
   get 'characters/:name' => 'characters#index', as: 'characters'
   get 'planets/:name' => 'planets#index', as: 'planets'
   get 'starships/:name' => 'starships#index', as: 'starships'
end
