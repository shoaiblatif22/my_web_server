require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }
end

=begin
context 'GET /' do
    it 'returns 200 OK' do
      response = get('/')

      expect(response.status).to be(200)
      expect(response.body).to eq('Hello!')
    end
  end
=end