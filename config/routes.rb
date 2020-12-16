Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do #, constraints: ApiConstraint.new(version: "1.buildpack-registry") do
      get 'search', to: 'search#index'
      get 'buildpacks/:namespace/:name', to: 'buildpacks#index'
      get 'buildpacks/:namespace/:name/:version', to: 'buildpacks#show'
    end
  end
end
