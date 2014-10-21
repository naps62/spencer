Spencer::Application.routes.draw do
  root to: 'pages#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :expenses, except: :edit
    end
  end

end
