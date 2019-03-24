class SearchController < ApplicationController
  def index
    @search = params[:search]
    @all_films = JSON.parse(RestClient.get('https://swapi.co/api/films/').body);
    @all_people = JSON.parse(RestClient.get('https://swapi.co/api/people/').body);
    @all_starships = JSON.parse(RestClient.get('https://swapi.co/api/starships/').body);
    @all_planets = JSON.parse(RestClient.get('https://swapi.co/api/planets/').body);
    @jsonResponse = '';
    @type = '';

    @all_films['results'].each do |film|
      if film['title'] == @search
        @jsonResponse = film;
        @type = "film";

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

    @all_people['results'].each do |person|
      if person['name'] == @search
        @jsonResponse = person;
        @type = 'person';

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
    end

    @all_starships['results'].each do |starship|
      if starship['name'] == @search
        @jsonResponse = starship;
        @type = 'starship';
      end
    end

    @all_planets['results'].each do |planet|
      if planet['name'] == @search
        @jsonResponse = planet;
        @type = 'planet';
      end
    end

  end

end
