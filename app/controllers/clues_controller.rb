class CluesController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    @clues = get_response
  end

  def get_response
    base_url = "http://jservice.io/api/"
    response = RestClient.get(base_url + "clues/?category=25" )
    JSON.parse(response)
  end
end
