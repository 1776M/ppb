Ppb::Application.routes.draw do

  resources :emails
  resources :joiners

  root to: 'pages#home'
  match '/help',    to: 'pages#help'
  match '/about',   to: 'pages#about'

end
