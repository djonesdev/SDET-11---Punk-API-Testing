

describe 'Random punk tests' do

  before(:all) do
    service = PunkService.new
    @json = service.random_punk_call
  end

  it 'The id should be a type of integer' do
    expect(@json["id"]).to be_a_kind_of(Integer)
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

end

describe "Punk by yeast" do

  before(:all) do
    service = PunkService.new
    @jsonyeast = service.yeast_punk_call('Wyeast 1056 - American Ale')

  end

  it 'The id should be a type of integer' do
    expect(@jsonyeast["name"]).to be_a_kind_of(String)
  end
end
