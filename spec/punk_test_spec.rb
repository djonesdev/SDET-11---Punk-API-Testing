

describe 'Random punk tests' do

  before(:all) do
    service = PunkService.new
    @json = service.random_punk_call
  end

  it 'The id should be a type of integer' do
    expect(@json["id"]).to be_a_kind_of(Integer)
  end

  it 'should have an image url' do
    expect(@json['image_url'])
  end

  it 'boil volume should have two key value pairs' do
    expect(@json['boil_volume'].size).to eq(2)
  end

  it 'Should have three ingredients' do
    expect(@json['ingredients'].size).to eq(3)
  end

end

describe 'Punk by ID tests' do

  before(:all) do
    service = PunkService.new
    @jsonid = service.id_punk_call(1)
  end

  it 'The id should be a type of integer' do
    expect(@jsonid["id"]).to be_a_kind_of(Integer)
  end

end

describe 'All punk api' do

  before(:all) do
    service = PunkService.new
    @jsonall = service.all_punk_service(1)
  end

  it 'The id should be a type of integer' do
    expect(@jsonall["id"]).to be_a_kind_of(Integer)
  end

  it "should have" do
    puts @jsonall.size
  end

  it 'description should be a string' do
    puts @jsonall['description'].class
  end

end

describe "Punk by query string" do

  before(:all) do
    service = PunkService.new
    @jsonquery = service.option_punk_call({"yeast" => "american", "abv_gt" => 4})
  end

  it 'The id should be a type of integer' do
    expect(@jsonquery["name"]).to be_a_kind_of(String)
    # puts @jsonquery
  end

  it 'The value key inside the mash_temp array have a value of 69' do
    expect(@jsonquery['method']['mash_temp'][0]['temp']['value']).to eq(69)
  end

  it 'description should be a string' do
    expect(@jsonquery['description']).to be_a_kind_of(String)
  end


end
