class WelcomeController < ApplicationController
  require 'rest-client'
  @response = RestClient.get('https://swapi.co/api/films');
  @jsonResponse = JSON.parse(@response.body);
  @mensaje = 'hola'
end
