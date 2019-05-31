require "open-uri"
require "json"

class MapsController < ApplicationController
  def show

  end

  def nearby_pharmacy
    response = open("https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=#{ENV['GOOGLE_API_KEY']}&location=#{params[:lat]},#{params[:lng]}&rankby=distance&keyword=pharmacy").read
    results = JSON.parse(response)


    first_five = results["results"][0..4].map do |pharmacy|
      pharmacy_hash = pharmacy["geometry"]["location"]
      pharmacy_hash[:info_window] = render_to_string(partial: "info_window", locals: { name: pharmacy["name"] })
      pharmacy_hash
    end
    render json: first_five
  end
end


