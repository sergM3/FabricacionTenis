Rails.application.routes.draw do
  get 'tenis/piezas', to: 'tenis#piezas'
  get 'tenis/ensamblaje', to: 'tenis#ensamblaje'
  resources :tenis, only: [:index, :show]
end
