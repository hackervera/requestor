module Requestor
	class Server
		def initialize(port)
			@server = TCPServer.new("127.0.0.1", port)
			Thread.new do
				loop do	
					@s = @server.accept
					@message = @s.read
					@callback.call(@message)
				end
			end
		end
		def callback(&block)
			@callback = block
		end
	end
end