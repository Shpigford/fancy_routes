module FancyRoutes
  class Engine < ::Rails::Engine
    isolate_namespace FancyRoutes

    initializer 'fancy_routes.assets.precompile' do |app|
      app.config.assets.precompile += %w(fancy_routes.css)
    end
  end
end