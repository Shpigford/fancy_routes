module FancyRoutes
  class RoutesController < ActionController::Base
    layout false

    def index
      @routes = Rails.application.routes.routes.collect do |route|
        { verb: route.verb, path: route.path.spec.to_s, name: route.name }
      end
    end
  end
end