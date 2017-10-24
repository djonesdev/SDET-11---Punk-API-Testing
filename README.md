#API Testing README

##Testing Punk API using rspec with a created service.

#### Install

```
 gem install httparty
 gem install rspec
 gem install json
```



###What does this service do?
This service allows for testing on multiple instances of the Punk API, it runs tests based on url params which is handled by using httparty.

####The service includes -  

##### All -
Tests that run on the whole dataset of the API.

##### Random -
Allows for tests on a randomly generated dataset from the PunkAPI.

##### By ID
Allows for testing on a specific object in the dataset by using the ID params.

##### By Query
These tests run based on the query string in an URL
for example "https://api.punkapi.com/v2/beers?yeast=Wyeast_1056_American_Ale™" will return all datasets where the yeast = Wyeast 1056 American Ale.

### Example
```
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
```  
This code in your test_spec file will run tests on the ID on the randomly generated dataset

```
describe 'Random punk tests' do

  before(:all) do
    service = PunkService.new
    @json = service.random_punk_call
  end

  it 'The id should be a type of integer' do
    expect(@json["id"]).to be_a_kind_of(Integer)
  end

end
```
