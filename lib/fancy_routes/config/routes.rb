FancyRoutes::Engine.routes.draw do
  get 'fancy_routes', to: 'routes#index', as: 'fancy_routes'
end