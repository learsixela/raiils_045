Rails.application.routes.draw do

  resources :libros
  
  get 'post/destroy'
  get 'post/index'
  get 'post/show'
  get 'post/create'
  get 'post/delete'
  get 'post/update'
  
  get 'home/index'
  get 'welcome/index'
  get 'mijail/mostrar'

  get "welcome", to: "welcome#index"
  get "home", to: "home#index"
  get "palma", to: "mijail#mostrar"
  get "index", to: 'phantom#index'
  get "generic", to: 'phantom#generic'
  get "elements", to: 'phantom#elements'

  # Defines the root path route ("/")
  root "welcome#index"
end
