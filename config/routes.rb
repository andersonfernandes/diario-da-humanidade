Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :usuarios

  resources :posts do
    collection do
      get 'search' => 'posts#search'
    end
  end

  resources :comentarios
  get 'perfil' => 'usuarios#perfil'
end
