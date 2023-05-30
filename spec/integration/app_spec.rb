# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "POST /sort-names" do
    it 'receives a list of names (as a comma-separated string) and returns the same list, sorted in alphabetical order' do
      # Assuming the post with id 1 exists.
      post '/sort-names', { names: 'Joe,Alice,Zoe,Julia,Kieran' }

      expect(last_response.status).to eq(200)
      expect(last_response.body).to eq("Alice,Joe,Julia,Kieran,Zoe")
      # expect(last_response.body).to eq(expected_response)
    end
  end
end



#   context "GET /hello" do
#     it "returns hello #{name}" do
#       # Send a GET request to /
#       # and returns a response object we can test.
#       response = get("/hello?name=Julia")

#       # Assert the response status code and body.
#       expect(response.status).to eq(200)
#       expect(response.body).to eq("hello Julia")
#     end

#     it "returns hello #{name}" do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = get("/hello?name=Maria")
  
#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq("hello Maria")
#       end

#       it "returns hello #{name}" do
#         # Send a GET request to /
#         # and returns a response object we can test.
#         response = get("/hello?name=Josh")
  
#         # Assert the response status code and body.
#         expect(response.status).to eq(200)
#         expect(response.body).to eq("hello Josh")
#       end

#     #   it "returns hello Josh" do
#     #     # Send a GET request to /
#     #     # and returns a response object we can test.
#     #     response = get("/hello?name?=Josh")
  
#     #     # Assert the response status code and body.
#     #     expect(response.status).to eq(200)
#     #     expect(response.body).to eq("hello Josh")
#     #   end
#   end

#   context "POST to /submit" do
#     xit "returns 200 OK with the right content" do
#       # Send a POST request to /submit
#       # with some body parameters
#       # and returns a response object we can test.
#       response = post("/submit", name: "Dana", message: 12)

#       # Assert the response status code and body.
#       expect(response.status).to eq(200)
#       expect(response.body).to eq("Hello Dana")
#     end

# end