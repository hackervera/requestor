require 'socket'
require 'json'
Thread.abort_on_exception = true
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
require 'requestor/sender'
require 'requestor/server'

