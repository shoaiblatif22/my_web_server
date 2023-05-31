require 'spec_helper'
require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context 'GET /hello' do
    it 'should return "Hello Shoaib"' do
      response = get('/hello?name=Shoaib')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Hello Shoaib')  
    end

    it 'should return "Hello Josh"' do
      response = get('hello?name=Josh')

      expect(response.status).to eq(200)
      expect(response.body).to eq('Hello Josh') 
    end
  end
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