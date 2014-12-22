Spencer::Application.routes.draw do
  defaults format: :json do
    constraints format: :json do
      resources :expenses, except: :edit
    end
  end
end
