class WelcomeController < ApplicationController
  require 'rest-client'
  @response = RestClient.get 'https://swapi.co/api/films'
end
