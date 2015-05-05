Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'sessions'}
  # resources :users, defaults: { format: :json }, except: [:index, :new, :edit] do
  #   post 'sign_in', on: :collection
  # end

  resources :organizations, defaults: { format: :json }, except: [:index, :new, :edit] do
    post 'sign_in', on: :collection
  end

  resources :organization_profiles

  shallow do
    resources :causes, except: [:new, :edit, :update] do
      resources :organization_profiles, except: [:new, :edit] do
        resources :campaigns, except: [:new, :edit]
      end
    end
  end
end
