class DonorsServiceClient
	URL = "http://doadores-env.ewmarezs3y.sa-east-1.elasticbeanstalk.com/donors"

	def self.save_donor(donor)
	 	RestClient.post URL, :donor => donor	
	end

	def self.get_names
	 	response = RestClient.get URL + "/names"	
	 	JSON.parse(response.body)
	end
end