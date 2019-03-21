class CharactersController < ApplicationController
  require 'rest-client'
  def index
    @name = params[:name]
    @response = RestClient.get('https://swapi.co/api/people/' + @name);
    @jsonResponse = JSON.parse(@response.body);
    @homeworld = JSON.parse(RestClient.get(@jsonResponse['homeworld']).body)['name']

    @films = {};
    @starships = {};

    @jsonResponse['films'].each do |films|
      @films[films.to_s] = JSON.parse(RestClient.get(films).body)['title']
    end

    @jsonResponse['starships'].each do |starships|
      @starships[starships.to_s] = JSON.parse(RestClient.get(starships).body)['name']
    end
  end

  def show
  end
end
