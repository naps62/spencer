Spencer::Application.routes.draw do
  namespace :v1 do
    resources :expenses, except: :edit
  end
end
