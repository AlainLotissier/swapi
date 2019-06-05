class StarshipsController < ApplicationController
  require 'rest-client'
  def index
    @results_graph= SWAPI::Client.query(Starship::Query, variables: {id: params[:id]}).data.starship
  end
end
