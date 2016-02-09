require 'sinatra'
require 'sinatra/custom_logger'
require 'logger'
require 'json'

$logger = Logger.new(STDOUT)
$logger.formatter = proc do |severity, time, progname, msg|
  {
    severity: severity,
    time: time,
    name: progname,
    msg: msg
  }.to_json
end

set :logger, $logger

get '/' do
  logger.info('foobar')
  "Hello World!"
end