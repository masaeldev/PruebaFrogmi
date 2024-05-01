require 'json'
require 'rest-client'
class ProductsController < ApplicationController
    def index
        url = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson'
        response = RestClient.get url
        result = JSON.parse response.to_str
    end
end