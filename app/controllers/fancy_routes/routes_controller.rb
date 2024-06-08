module FancyRoutes
  class RoutesController < ActionController::Base
    def index
      @routes = Rails.application.routes.routes.map do |route|
        route_wrapper = ActionDispatch::Routing::RouteWrapper.new(route)
        OpenStruct.new({
          name: route_wrapper.name.presence || '',
          verb: route_wrapper.verb,
          path: route_wrapper.path,
          endpoint: route_wrapper.endpoint
        })
      end
    end
  end
end