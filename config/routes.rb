Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :usuarios
  resources :posts
  resources :comentarios
  get 'perfil' => 'usuarios#perfil'
end
