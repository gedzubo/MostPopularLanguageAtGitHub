require 'net/http'
require 'uri'

class HttpClient
  attr_reader :uri
  def initialize(args)
    @uri = URI(APP_CONFIG['github_api_address'] + args.fetch(:user) + "/repos")
  end
  
  def send_get_request
      # Creates http response object.
      create_request_body(Net::HTTP::Get)
  end
  
  private
    def create_header
      {}
    end
    
    def create_request_body(request_class)
        # Creates header
        header = create_header
        http = Net::HTTP.new(@uri.host, @uri.port)
        http.use_ssl = true
        request = request_class.new(@uri.request_uri, header)
        response = http.request(request)
     end
end
