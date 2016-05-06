Rails.application.routes.draw do
  root to: 'home#index'

  devise_for :usuarios

  resources :posts, except: [:index] do
    collection do
      get 'search' => 'posts#search'
    end
  end

  resources :comentarios, only: [:create, :update, :destroy]

  get 'perfil' => 'usuarios#perfil'

  resources :usuarios, only: [:show]
end
