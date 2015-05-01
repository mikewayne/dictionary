require('rspec')
require('definitions')
require('words')

describe('Words') do
   before() do
     Words.clear()
   end

describe('#word_name') do
  it('returns the name of the word entered by user') do
    new_word = Words.new("scion")
    expect(new_word.word_name()).to(eq("scion"))
  end
end

describe('#save') do
  it('adds word to array of saved names') do
    new_word = Words.new("scion")
    new_word.save()
    expect(Words.all()).to(eq([new_word]))
  end
end

describe('.all') do
  it('is empty to start with') do
     expect(Words.all()).to(eq([]))
  end
end

describe('#add_word') do
 it('takes in a new word from user') do
   new_word = Words.new("scion")
   @words.save("scion")
   expect(new_word.add_word("scion")).to(eq(["scion"]))
 end
end
end
