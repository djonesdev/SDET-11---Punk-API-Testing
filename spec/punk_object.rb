require 'httparty'
require 'json'

  class PunkService

    include HTTParty
    base_uri 'api.punkapi.com/v2/'

    def single_punk_call(punk)
      JSON.parse(self.class.get("/postcodes/#{postcode}").body)
    end

    def multiple_punk_service(punk_array)
    end
