class WelcomeController < ApplicationController
  require 'rest-client'
  include SWAPI
  include Films
  def index
    @results_graph= SWAPI::Client.query(Films::Query).data.all_films.films
  end
end
