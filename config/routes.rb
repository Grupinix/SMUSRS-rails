Rails.application.routes.draw do
  get 'dashboard', to: 'dashboard#show'
  get 'perfil', to: 'dashboard#perfil'
  get 'editar_perfil', to: 'dashboard#edit_perfil'
  patch 'editar_perfil', to: 'dashboard#update_perfil'
  devise_for :users
  root to: 'home#index'
end
