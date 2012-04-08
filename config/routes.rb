Ppb::Application.routes.draw do

  resources :emails
  resources :joiners
  resources :names


  root to: 'pages#home'
  match '/help',    to: 'pages#help'
  match '/about',   to: 'pages#about'
  match '/buynow',   to: 'pages#buynow'
  match '/contact',   to: 'pages#contact'

end
