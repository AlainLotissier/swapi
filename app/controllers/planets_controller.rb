class PlanetsController < ApplicationController
  require 'rest-client'
  def index
    @results_graph= SWAPI::Client.query(Planet::Query, variables: {id: params[:id]}).data.planet
  end
end
