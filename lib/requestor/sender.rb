module Requestor
	class Sender
		def initialize(port)
			@port = port
			@errback = lambda do |message|
				puts "Oops, #{message}"
			end
		end
		def send(str)
			begin
				@socket = TCPSocket.new("127.0.0.1", @port)
			rescue => e
				@errback.call(e)
				return
			end
			@socket.send str, 0
			@socket.close_write
			#@socket.flush
		end
		def errback(&block)
			@errback = block
		end
	end
end