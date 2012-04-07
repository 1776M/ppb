Ppb::Application.routes.draw do

  root to: 'pages#home'
  get "pages/help"
  get "pages/about"

end
