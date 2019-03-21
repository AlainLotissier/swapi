class StarshipsController < ApplicationController
  require 'rest-client'
  def index
    @name = params[:name]
    @response = RestClient.get('https://swapi.co/api/starships/' + @name);
    @jsonResponse = JSON.parse(@response.body);
    

    @pilots = {};
    @films = {};

    @jsonResponse['films'].each do |films|
      @films[films.to_s] = JSON.parse(RestClient.get(films).body)['title']
    end

    @jsonResponse['pilots'].each do |pilots|
      @pilots[pilots.to_s] = JSON.parse(RestClient.get(pilots).body)['name']
    end
  end
end
