# Adding the required 

class Whatever

# Our defined method for the actual API call 
# Providing the required parameters it should
# call "HTTP GET method" from the send_request function 
# and retrieve the response with JSON format. 

# The data & headers are optional , but they can 
# affect the way data is retrieved. it either retrieves 
# books that contains header or not! 

 def self.send_get_request(request_domain,path,data,headers=nil)
 uri = URI.parse(request_domain)
 http_request = Net::HTTP.new(uri.host, uri.port)

 if headers == nil
 response = http_request.send_request('GET',path,data)
 else
 response = http_request.send_request('GET',path,data,headers)
 end
 
 # generates the response body.
 response.body
 
 end
 
 
 # 1. Gets the request type in our case is "GET" , and generates 
 #a response based on the parameters provided (ISBNdb path)


def self.send_request(domain, request_type, request_path, data={}, headers={})
 request_path = "/#{request_path}" unless request_path[0] == "/"
 data = data.to_query if data.is_a?(Hash)
 response = {}
 if request_type == "GET"
 response = send_get_request(domain, request_path, data, headers)
 end

 # 2. The response is then parsed into JSON format. 
 ActiveSupport::JSON.decode(response)
 end


end



# We call the get_request method & it should return the data of books available (With JSON format!)
@returnvariable = Whatever.send_get_request('isbndb.com','/api/v2/json/5PYFR4XU/books?q=science',{},{})


# Places the generated data in Console 
puts @returnvariable.inspect



#      In order to run the aoi call: 
#     $ bin/rails runner lib/api_isbndb.rb
#

