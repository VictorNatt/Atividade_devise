Rails.application.routes.draw do
  get "dashboard/index"
  get "home/index"
  # Rotas de autenticação
  devise_for :users

  # ==== Rota pública ====
  root "home#index"  # página inicial pública

  # ==== Rotas privadas (somente logado) ====
  # exemplo de recurso privado
  get 'dashboard', to: 'dashboard#index', as: 'dashboard'

end