Spencer::Application.routes.draw do
  # devise_for :users
  mount_devise_token_auth_for 'User', at: 'auth'

  defaults format: :json do
    constraints format: :json do
      resources :expenses, except: :edit
      resources :tags, only: [:index]
      resources :days, only: :index do
        resources :expenses, only: :index, controller: 'days/expenses'
      end
    end
  end
end
