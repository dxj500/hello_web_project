Post /sort-names Route Design Recipe

1. Design the Route Signature

the HTTP method
Method: Post
the path: /sort_names
any query parameters: names (string)


2. Design the Response
The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return 200 OK if the post exists, but 404 Not Found if the post is not found in the database.

Your response might return plain text, JSON, or HTML code.

Replace the below with your own design. Think of all the different possible responses your route will return.

<!-- EXAMPLE -->
<!-- Response when the post is found: 200 OK -->

When query param names are 'Joe,Alice,Zoe,Julia,Kieran'

Alice,Joe,Julia,Kieran,Zoe

3. Write Examples
Replace these with your own design.

# Request:

POST /sort_names?names=Joe,Alice,Zoe,Julia,Kieran

# Expected response:

Response for 200 OK

# Request:

POST /sort_names?names=Joe,Alice,Zoe,Julia,Kieran

# Expected response:

Alice,Joe,Julia,Kieran,Zoe

4. Encode as Tests Examples
# EXAMPLE
# file: spec/integration/application_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context 'Post /sort_names' do
    it "returns a sorted list of names" do
      response = post '/sort_names'

      expect(response.status).to eq(200)
      expect(response.body).to eq('Alice,Joe,Julia,Kieran,Zoe')
    end
  end
end
5. Implement the Route
Write the route and web server code to implement the route behaviour.