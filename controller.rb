require('sinatra')
require('sinatra/contrib/all')
require('json')
require('pry-byebug')

require_relative('./models/wordformatter')

get('/') do
  erb(:home)
end

get('/address') do
  @formatter = WordFormatter.new()
  @address = { 
    address: '3 ARGYLE HOUSE', 
    building: 'CODEBASE',
    postcode: 'e13 zqf', 
    phone: '0131558030' }
    erb(:address)
end

get('/formatter') do
  @formatter = WordFormatter.new()
  erb(:formatter)
  end