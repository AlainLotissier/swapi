class MovieController < ApplicationController
  require 'rest-client'
  def index
  end
  def show
    @results_graph= SWAPI::Client.query(Film::Query, variables: {id: params[:id]})
  end
end
