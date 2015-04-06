Rails.application.routes.draw do
  resources :users, defaults: { format: :json }, except: [:index, :new, :edit] do
    post 'sign_in', on: :collection
  end

end
