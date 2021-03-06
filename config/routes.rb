Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :tasks
  get '/tasks', to:'tasks#index', as:'tasks'
  post '/tasks', to:'tasks#create'
  get 'tasks/new', to:'tasks#new', as:'new_task'
  get '/tasks/:id/edit', to:'tasks#edit', as:'edit_task'
  get '/tasks/:id', to:'tasks#show', as:'task'
  patch '/tasks/:id', to:'tasks#update'
  put '/tasks/:id', to:'tasks#update'
  put '/tasks/:id/complete', to: 'tasks#complete', as:'complete_task'
  # put '/tasks/:id/uncomplete', to: 'tasks#uncomplete', as:'uncomplete_task'
  # put '/tasks/:id/complete', to: 'tasks#complete', as:'complete_task'
  delete '/tasks/:id', to: 'tasks#destroy'
end
