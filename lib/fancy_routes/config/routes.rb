FancyRoutes::Engine.routes.draw do
  resource :fancy_routes, only: [:index], as: :fancy_routes
end