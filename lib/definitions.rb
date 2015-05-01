class Definitions

  @@definitions = []

  define_method(:initialize) do |definition|
    @definition = definition
    #@order
  end

  define_method(:definition) do
    @definition
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

end
