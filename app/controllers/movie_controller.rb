class MovieController < ApplicationController
  require 'rest-client'
  def index
  end
  def show
    @id = params[:id]
    @response = RestClient.get('https://swapi.co/api/films/' + @id);
    @jsonResponse = JSON.parse(@response.body);

  end
end
