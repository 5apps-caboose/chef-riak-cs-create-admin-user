require "net/http"
require "net/https"
require "json"
require "uri"

module RiakCS
  PORT = 8080
  USER_RESOURCE_PATH = "riak-cs/user"

  def self.create_admin_user(name, email, ipaddress, ssl=false)
    uri = URI.parse("%s://%s:%s/%s" %
      [ (ssl ? "https" : "http"), ipaddress, PORT, USER_RESOURCE_PATH ])
    request = Net::HTTP::Post.new(uri.request_uri, "Content-Type" => "application/json")
    request.body  = {
      "email" => email,
      "name"  => name
    }.to_json

    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = ssl
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    response = http.request(request)
    json = JSON.parse(response.body)

    [ json["key_id"], json["key_secret"] ]
  end
end
