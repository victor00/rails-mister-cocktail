Rails.application.routes.draw do
  # get 'doses/new'
  # get 'doses/create'
  # get 'cocktails/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
end
