require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangles') do
  @side_one = params.fetch('side_one').to_i
  @side_two = params.fetch('side_two').to_i
  @side_three = params.fetch('side_three').to_i
  @triangles = Triangles.new(@side_one, @side_two, @side_three)
  erb(:triangles_test)
end
