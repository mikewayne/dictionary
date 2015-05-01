require('sinatra')
require('sinatra/reloader')
require('./lib/words')
require('./lib/definitions')
also_reload('lib/**/*.rb')
require('pry')

get ('/') do
  erb(:index)
end

get('/words/new') do
  erb(:words_form)
end

get('/words') do
  @words = Words.all
end

get('/definitions') do
  @definitions = Definitions.all
end

post('/words') do
  word_name = params.fetch('word_name')
  @definition = Definitions.new(definition)
  @definition.save()
  @definitions = Definitions.all()
  erb(:success)
end

post('definitions') do
  definition = params.fetch("definition")
  @definition = Definitions.new(definition)
  @definition.save()
  @words = Words.find(params.fetch('words'))

  erb(:success)
end  
