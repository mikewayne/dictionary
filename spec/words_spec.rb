require('rspec')
require('definitions')
require('words')

describe(Words) do
   before() do
     Words.clear()
   end

 describe('#word_name') do
   it('returns the name of the word entered by user') do
     test_word = Words.new("scion")
     expect(test_word.word_name()).to(eq("scion"))
   end
 end

describe('#save') do
  it('adds word to array of saved names') do
    test_word = Words.new("scion")
    test_word.save()
    expect(Words.all()).to(eq([test_word]))
  end
end

describe('.all') do
  it('is empty to start with') do
     expect(Words.all()).to(eq([]))
  end
end
end
