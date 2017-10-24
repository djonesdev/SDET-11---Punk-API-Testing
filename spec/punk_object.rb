require 'httparty'
require 'json'

class PunkService
  include HTTParty
  attr_accessor :uri

    def initialize
      @uri = ""
    end

    base_uri 'api.punkapi.com/v2/'

    def random_punk_call
      ran = JSON.parse(self.class.get("/beers/random").body)
      ran[0]
    end

    def id_punk_call(id)
      id = JSON.parse(self.class.get("/beers/#{id}").body)
      id[0]
    end

    def all_punk_service
        all = JSON.parse(self.class.get("/beers").body)
    end

    def option_punk_call(opt = {})

      if opt.empty? == false
        num_keys = 0
        @uri << "?"
        opt.each do |k,v|
          @uri << "#{k}=#{v}"
          while num_keys < opt.keys.length - 1
            @uri << "&"
            num_keys += 1
          end
        end
          query_resp = JSON.parse(self.class.get("/beers#{@uri}").body)
          query_resp[0]
      end
    end
end
