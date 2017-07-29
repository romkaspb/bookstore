Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: [:show, :index]
  resources :stores, only: [:show, :index] do
    put 'sell_out', on: :member
  end
  resources :publishers, only: [:show, :index]
end
