require '../lib/requestor'
foo = Requestor::Server.new(8888)
foo.tyler = lambda do |args|
	p args['message']
end
foo.don = lambda do |args|
	p "donpizzle"
end
foo.muggle = lambda do |args|
	p args['spell']
end
loop{}