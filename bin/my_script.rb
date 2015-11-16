require 'addressable/uri'
require 'rest-client'


  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/4'
  ).to_s

  puts RestClient.delete(url)
