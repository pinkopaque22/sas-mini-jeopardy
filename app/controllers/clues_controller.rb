class CluesController < ApplicationController
  require 'rest-client'
  require 'json'

  def index
    @clues_count = get_clues.count
    @clues = get_clues
  end

  def get_clues
    get_response("clues/?category=25")
    .select{ |c| c["airdate"] >= "1996" && c["value"].present?}
    .sort_by{ |d| d["value"] }
  end

  def get_response(url)
    base_url = "http://jservice.io/api/"
    response = RestClient.get(base_url + url)
    JSON.parse(response)
  end
end
