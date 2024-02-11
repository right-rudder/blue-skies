require 'httparty'

class LocationsController < ApplicationController
  def show
    # Load location data from YAML file based on location slug
    @location = load_location(params[:location_slug])

    if @location.nil?
      # Redirect to the 404 error page if location data is not found
      render "errors/not_found"
    else
      # Render the location page with the fetched data
      render 'show'
    end

    #response = HTTParty.get('https://api.bing.microsoft.com/v7.0/images/search', 
    #  query: {
    #    q: 'Talladega National Forest', # Search query for images
    #    count: 1,
    #    safeSearch: 'Strict', 
    #    license: 'Public', # Filter images by public license
    #    freshness: 'Month' # Filter images by freshness
    #  },
    #  headers: {
    #    'Ocp-Apim-Subscription-Key' => ENV['BING_API']
    #  }
    #) 
    #body = JSON.parse(response.body)
    #puts body.inspect # Print the entire body to see its structure  ##This works.. so does without .inspect
  
    #@bing_url = "hellow world"
    #puts "controller comment"
    #@bing_url = body['value'].map { |result| result['thumbnailUrl'] }
    
    


#   # Make a request to the Bing Image Search API
#    response = HTTParty.get('https://api.bing.microsoft.com/v7.0/images/search', query: {
#      q: 'Talladega National Forest', # Example search query
#      count: 3, # Number of images to retrieve
#      safeSearch: 'Strict', # Ensure safe search is enabled
#      license: 'Public', # Filter images by public license
#      freshness: 'Month' # Filter images by freshness
#    },
#    headers: { 'Ocp-Apim-Subscription-Key' => ENV['BING_API'] }) # Replace with your Bing API key
#
#    # Check if the request was successful (HTTP status 200)
#    if response.code == 200
#      # Parse the JSON response body
#      body = JSON.parse(response.body)
#
#      # Extract image URLs from the response body
#      @image_urls = body['value'].map { |result| result['contentUrl'] }
#
#      # Print the image URLs
#      #puts @image_urls.JSON
#    else
#      # Handle HTTP error
#      puts "Failed to retrieve images from Bing Image Search API (HTTP #{response.code})"
#    end

  end

  private

  def load_location(slug)
    # Load locations data from YAML file
    locations_file = Rails.root.join('config', 'locations.yml')
    locations_data = YAML.load_file(locations_file)

    # Find the location data based on the provided slug
    locations_data[slug]
  end
end
