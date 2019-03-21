class MovieController < ApplicationController
  require 'rest-client'
  def index
  end
  def show
    @id = params[:id]
    @response = RestClient.get('https://swapi.co/api/films/' + @id);
    @jsonResponse = JSON.parse(@response.body);
    @characters = {};
    @planets = {};
    @starships = {};

    @jsonResponse['characters'].each do |characters|
      @characters[characters.to_s] = JSON.parse(RestClient.get(characters).body)['name']
    end

    @jsonResponse['planets'].each do |planets|
      @planets[planets.to_s] = JSON.parse(RestClient.get(planets).body)['name']
    end

    @jsonResponse['starships'].each do |starships|
      @starships[starships.to_s] = JSON.parse(RestClient.get(starships).body)['name']
    end

  end
end
