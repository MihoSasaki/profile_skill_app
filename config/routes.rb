Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :skill_tags, only: [:index, :show]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: [] do
            resources :tags, controller: :skill_tags, only: [:destroy] do
              member do
                post :add
                put :follow_skill
                delete :unfollow_skill
              end
              collection do
                get :tags_with_followers
                get :tags
              end
            end
      end
    end
  end
end
