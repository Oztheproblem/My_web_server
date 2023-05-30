# file: spec/integration/application_spec.rb

require "spec_helper"
require "rack/test"
require_relative '../../app'

describe Application do
  # This is so we can use rack-test helper methods.
  include Rack::Test::Methods

  # We need to declare the `app` value by instantiating the Application
  # class so our tests work.
  let(:app) { Application.new }

  context "GET /hello" do
    it "returns hello #{name}" do
      # Send a GET request to /
      # and returns a response object we can test.
      response = get("/hello?name=Julia")

      # Assert the response status code and body.
      expect(response.status).to eq(200)
      expect(response.body).to eq("hello Julia")
    end

    it "returns hello #{name}" do
        # Send a GET request to /
        # and returns a response object we can test.
        response = get("/hello?name=Maria")
  
        # Assert the response status code and body.
        expect(response.status).to eq(200)
        expect(response.body).to eq("hello Maria")
      end

      it "returns hello #{name}" do
        # Send a GET request to /
        # and returns a response object we can test.
        response = get("/hello?name=Josh")
  
        # Assert the response status code and body.
        expect(response.status).to eq(200)
        expect(response.body).to eq("hello Josh")
      end

    #   it "returns hello Josh" do
    #     # Send a GET request to /
    #     # and returns a response object we can test.
    #     response = get("/hello?name?=Josh")
  
    #     # Assert the response status code and body.
    #     expect(response.status).to eq(200)
    #     expect(response.body).to eq("hello Josh")
    #   end
  end

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
#   end
end