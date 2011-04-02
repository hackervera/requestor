require '../lib/requestor'
foo = Requestor::Server.new(8888)
foo.callback do |message|
	puts "got message: #{message}"
end
sleep 10
def baz(message)
	p message
end
loop{}