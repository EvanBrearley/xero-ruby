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

# Unit tests for XeroRuby::ContactGroup
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ContactGroup' do
  before do
    # run before each test
    @instance = XeroRuby::ContactGroup.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ContactGroup' do
    it 'should create an instance of ContactGroup' do
      expect(@instance).to be_instance_of(XeroRuby::ContactGroup)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACTIVE", "DELETED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "contact_group_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "contacts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
