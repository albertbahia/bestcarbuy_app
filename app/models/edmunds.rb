class Edmunds

	def self.car_search(query)
		url = URI.escape("https://api.edmunds.com/api/vehicle/v2/makes?state=used&year=#{query}&view=basic&fmt=json&api_key=#{ENV["EDMUNDS_API_KEY"]}")
		request = HTTParty.get(url)

	end

end