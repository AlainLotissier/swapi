class CharactersController < ApplicationController
  require 'rest-client'
  def index
    @results_graph= SWAPI::Client.query(Character::Query, variables: {id: params[:id]}).data.person
  end

  def show
  end
end
