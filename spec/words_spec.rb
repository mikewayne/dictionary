require('rspec')
require('definitions')
require('words')

describe('words') do
  before() do
    Words.clear()
  end

describe('#word') do
  it('takes in a new word from user') do
    new_word = Words.new("scion")
    @definitions.push("scion")
    expect(new_word.word()).to(eq([new_word]))
  end
 end
end
