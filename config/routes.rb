Rails.application.routes.draw do
  namespace :admin do
    # get 'home/index'
    resource :home
    resources :secciones do
      resources :paginas
    end
    # resources :users
    # root to: "users#index"
  end

  authenticated :user do
    root 'admin/home#index', as: :authenticated_root
  end

  get 'paginas/:id' => 'visitors#paginas', as: :paginas
  get 'pagina/:pagina' => 'visitors#pagina', as: :pagina

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
