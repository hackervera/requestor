module Requestor
	class Server
		def initialize(port)
			@callbacks = []
			@server = TCPServer.new("127.0.0.1", port)
			Thread.new do
				loop do	
					@s = @server.accept
					@message = @s.read
					@result = JSON.parse @message
					func = eval("@#{@result['function']}")
					func.call(@result)
				end
			end
		end
		def callback(&block)
			@callback = block
		end
		def add(&block)
			eval("@#{block}")
		end
		def method_missing(sym, block)
			instance = sym.to_s.chomp "="
			self.instance_variable_set(:"@#{instance}", block)
			#p eval("@#{instance}")
			#p block.call()
		end
	end
end