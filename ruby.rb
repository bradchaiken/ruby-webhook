#!/usr/bin/env ruby
require 'rubygems'
require 'sinatra'
require 'json'

post '/' do
  params = JSON.parse request.body.read
  puts params
end

get '/' do
  "Hello, World!"
end