require '../lib/requestor'
foo = Requestor::Sender.new(8888)

10.times do
	foo.send ({:function => :tyler, :message => :"tyler is coool"})
end
foo.send ({:function => :don})
foo.send({:function => :muggle, :spell => :none})
