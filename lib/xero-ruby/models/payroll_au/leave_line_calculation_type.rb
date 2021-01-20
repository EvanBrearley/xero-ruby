=begin
#Xero Payroll AU

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  class LeaveLineCalculationType
    NOCALCULATIONREQUIRED = "NOCALCULATIONREQUIRED".freeze
    FIXEDAMOUNTEACHPERIOD = "FIXEDAMOUNTEACHPERIOD".freeze
    ENTERRATEINPAYTEMPLATE = "ENTERRATEINPAYTEMPLATE".freeze
    BASEDONORDINARYEARNINGS = "BASEDONORDINARYEARNINGS".freeze
    EMPTY = "".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = LeaveLineCalculationType.constants.select { |c| LeaveLineCalculationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #LeaveLineCalculationType" if constantValues.empty?
      value
    end
  end
end
