module FancyRoutes
 class RoutesController < ApplicationController
   def index
     @routes = Rails.application.routes.routes
     render layout: false
   end
 end
end