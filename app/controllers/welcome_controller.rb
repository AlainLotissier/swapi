class WelcomeController < ApplicationController
  def index
    require 'rest-client'
    @response = RestClient.get('https://swapi.co/api/films');
    @jsonResponse = JSON.parse(@response.body);
    @results = @jsonResponse["results"];
    @counter = 1;
  end
end
