=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.0.1
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for XeroRuby::QuoteStatusCodes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'QuoteStatusCodes' do
  before do
    # run before each test
    @instance = XeroRuby::QuoteStatusCodes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of QuoteStatusCodes' do
    it 'should create an instance of QuoteStatusCodes' do
      expect(@instance).to be_instance_of(XeroRuby::QuoteStatusCodes)
    end
  end
end
