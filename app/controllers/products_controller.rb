require 'json'
require 'rest-client'
class ProductsController < ApplicationController
    
    def index        
        url = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_month.geojson'
        #response = RestClient.get url
        
        #response = RestClient::Request.new(
        #    :method => :get,
        #    :url => url
        #).execute

        #response = RestClient::Request.execute(method: :get, url: url)

        @result = ""
        RestClient.get(url){|response, request, resulr|
            if response.code == 200
                @result = JSON.parse response.to_str
            end
        }
        return @result
    end
end