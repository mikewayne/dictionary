require('rspec')
require('definitions')
require('words')

describe(Definitions) do
  before() do
    Definitions.clear()
  end

describe('#save') do
  it('adds a definition to the array of saved vehicles') do
    test_def = Definitions.new("progeny of a luminary")
    test_def.save()
    expect(Definitions.all()).to(eq([test_def]))
  end
end

describe('.all') do
  it('is empty at first') do
    expect(Definitions.all()).to(eq([]))
  end
end

describe('.clear') do
  it('clears all the saved definitions from the class array') do
    test_def = Definitions.new("progeny of a luminary")
    test_def.save()
    Definitions.clear()
    expect(Definitions.all()).to(eq([]))
  end
end    

end
