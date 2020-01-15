Rails.application.routes.draw do
  root to: 'purchases#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :purchases do
    resources :products, except: [:destroy]
  end
end
