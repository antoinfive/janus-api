Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :stories, except: [:new, :edit]
      resources :projects, except: [:new, :edit]
      resources :users, except: [:new, :edit]
      resources :snippets, except: [:new, :edit]
      resources :tags, except: [:new, :edit]
      resources :bookmarks, except: [:new, :edit]
    end
  end

  post "/users/sign_in", to: "sessions#create"

end
