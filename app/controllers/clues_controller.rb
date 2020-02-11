class CluesController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    url = "http://jservice.io/api/clues/?category=25"
    response = RestClient.get(url)
    JSON.parse(response)
  end
end
