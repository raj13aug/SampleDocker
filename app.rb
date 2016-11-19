require 'sinatra'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Hello Devops Team I am Docker! The time is #{ Time.now.to_i } on #{ `hostname` }!"
  end
end


