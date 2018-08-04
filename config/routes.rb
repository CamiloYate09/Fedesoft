Rails.application.routes.draw do
  resources :usuarios
  devise_for :users
  resources :pruebas
  resources :productos
  resources :articulos do
    resources :comentarios
  end

  root 'bienvenido#index'
end
