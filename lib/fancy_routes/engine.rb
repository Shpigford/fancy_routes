module FancyRoutes
 class Engine < ::Rails::Engine
   isolate_namespace FancyRoutes

   initializer "fancy_routes.add_routes" do
      Rails.application.routes.append do
        mount FancyRoutes::Engine => "/fancy_routes" if Rails.env.development?
      end
    end
 end
end


