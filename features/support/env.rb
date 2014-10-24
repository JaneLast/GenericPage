# env.rb

require 'rspec/expectations'
require 'watir'
require 'pry'

Dir[File.dirname(__FILE__) + '/../pages/*.rb'].each { |f| require f}
