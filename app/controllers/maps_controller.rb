require "open-uri"
require "json"

class MapsController < ApplicationController
  def show
  end

  def nearby_pharmacy
    response = open("https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=#{ENV['GOOGLE_API_KEY']}&location=#{params[:lat]},#{params[:lng]}&rankby=distance&keyword=pharmacy").read
    results = JSON.parse(response)

    render( {json: results["results"][0]["geometry"]["location"]})
  end
end
