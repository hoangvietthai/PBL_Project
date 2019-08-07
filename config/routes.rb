Rails.application.routes.draw do
  devise_for :users,
    controllers:{
        registrations: "users/registrations"
    }
  root 'static_pages#home'
  resource :jobs
  resource :contacts
  resource :comments
  resource :admins
  get '/user', to: 'admins#edit'
  post '/admins/new', to: 'admins#create'
  post '/admins/edit', to: 'admins#update'
  get '/detail', to: 'jobs#detail'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contacts', to: 'static_pages#contacts'
end
