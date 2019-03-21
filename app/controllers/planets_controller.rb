class PlanetsController < ApplicationController
  require 'rest-client'
  def index
    @name = params[:name]
    @response = RestClient.get('https://swapi.co/api/planets/' + @name);
    @jsonResponse = JSON.parse(@response.body);


    @residents = {};
    @films = {};

    @jsonResponse['films'].each do |films|
      @films[films.to_s] = JSON.parse(RestClient.get(films).body)['title']
    end

    @jsonResponse['residents'].each do |residents|
      @residents[residents.to_s] = JSON.parse(RestClient.get(residents).body)['name']
    end
  end
end
