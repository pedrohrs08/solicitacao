class Publisher

	def self.publish(message = {})
		x = channel.fanout("requests")
		x.publish(message.to_json)
	end

	def self.channel
		@channel ||= connection.create_channel
	end

	def self.connection
		@connection ||= Bunny.new("amqp://user1:user1@52.36.70.190:5672").tap do |c| 
			c.start 
		end
	end
end