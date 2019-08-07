Rails.application.routes.draw do
  devise_for :users,
    controllers:{
        registrations: "users/registrations"
    }
  root 'static_pages#home'
  resource :jobs
  resource :contacts
  resource :comments
  get '/detail', to: 'jobs#detail'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contacts', to: 'static_pages#contacts'
end
