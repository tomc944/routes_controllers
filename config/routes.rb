Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy, :update, :show] do
    resources :contacts, only: [:index]
  end

  resources :contacts, only: [:create, :destroy, :update, :show]


  resources :contact_shares, only: [:index, :create, :destroy]
end
