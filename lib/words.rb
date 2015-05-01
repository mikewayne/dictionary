class Words

  @@words = []
  #attr_reader(:word#, :definitions #,:order)

  define_method(:initialize) do |word|
    @word = word
    #@order =
    @definitions = []
  end

  define_singleton_method(:all) do
    @@words
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_method(:add_word) do |word|
    @words.push(word)
  end

  define_method(:add_definition) do |definition|
   @definitions.push(definition)
  end

end
