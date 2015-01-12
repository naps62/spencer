Spencer::Application.routes.draw do
  defaults format: :json do
    constraints format: :json do
      resources :expenses, except: :edit
      resources :tags, only: [:index]
    end
  end
end
