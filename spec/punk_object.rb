require 'httparty'
require 'json'

  class PunkService

    include HTTParty
    base_uri 'api.punkapi.com/v2/'

    def random_punk_call
      ran = JSON.parse(self.class.get("/beers/random").body)
      ran[0]
    end

    def id_punk_call(id)
      id = JSON.parse(self.class.get("/beers/#{id}").body)
      id[0]
    end


    def all_punk_service(all)
        all = JSON.parse(self.class.get("/beers").body)
        all[0]
    end

    def abv_punk_call(abv)
      abv = JSON.parse(self.class.get("/beers/abv_gt").body)
      abv[0]
    end

 end
