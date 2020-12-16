Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'search/index'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'buildpacks/index'
      get 'buildpacks/show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
