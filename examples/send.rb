require '../lib/requestor'
foo = Requestor::Sender.new(8888)
10.times do
	foo.send "gotcha"
end