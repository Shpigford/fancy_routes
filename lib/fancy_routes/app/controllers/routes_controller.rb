module FancyRoutes
  class RoutesController < ApplicationController
    def index
      @routes = Rails.application.routes.routes
      respond_to do |format|
        format.html
      end
    end
  end
end