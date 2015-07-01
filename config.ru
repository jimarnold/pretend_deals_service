$LOAD_PATH.unshift File.expand_path( "../lib", __FILE__ )

require 'deals_service/api'

if ENV['RACK_ENV'].downcase == 'development'
  $stdout.sync = true
  puts "running in DEV MODE!"
end

run DealsService::API
