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
  require 'bigdecimal'

  class EarningsRate
    # Name of the earnings rate (max length = 100)
    attr_accessor :name
    
    # See Accounts
    attr_accessor :account_code
    
    # Type of units used to record earnings (max length = 50). Only When RateType is RATEPERUNIT
    attr_accessor :type_of_units
    
    # Most payments are subject to tax, so you should only set this value if you are sure that a payment is exempt from PAYG withholding
    attr_accessor :is_exempt_from_tax
    
    # See the ATO website for details of which payments are exempt from SGC
    attr_accessor :is_exempt_from_super
    
    # Boolean to determine if the earnings rate is reportable or exempt from W1
    attr_accessor :is_reportable_as_w1
    

    attr_accessor :earnings_type
    
    # Xero identifier
    attr_accessor :earnings_rate_id
    

    attr_accessor :rate_type
    
    # Default rate per unit (optional). Only applicable if RateType is RATEPERUNIT.
    attr_accessor :rate_per_unit
    
    # This is the multiplier used to calculate the rate per unit, based on the employee’s ordinary earnings rate. For example, for time and a half enter 1.5. Only applicable if RateType is MULTIPLE
    attr_accessor :multiplier
    
    # Indicates that this earnings rate should accrue leave. Only applicable if RateType is MULTIPLE
    attr_accessor :accrue_leave
    
    # Optional Amount for FIXEDAMOUNT RateType EarningsRate
    attr_accessor :amount
    

    attr_accessor :employment_termination_payment_type
    
    # Last modified timestamp
    attr_accessor :updated_date_utc
    
    # Is the current record
    attr_accessor :current_record
    

    attr_accessor :allowance_type
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'Name',
        :'account_code' => :'AccountCode',
        :'type_of_units' => :'TypeOfUnits',
        :'is_exempt_from_tax' => :'IsExemptFromTax',
        :'is_exempt_from_super' => :'IsExemptFromSuper',
        :'is_reportable_as_w1' => :'IsReportableAsW1',
        :'earnings_type' => :'EarningsType',
        :'earnings_rate_id' => :'EarningsRateID',
        :'rate_type' => :'RateType',
        :'rate_per_unit' => :'RatePerUnit',
        :'multiplier' => :'Multiplier',
        :'accrue_leave' => :'AccrueLeave',
        :'amount' => :'Amount',
        :'employment_termination_payment_type' => :'EmploymentTerminationPaymentType',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'current_record' => :'CurrentRecord',
        :'allowance_type' => :'AllowanceType'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'account_code' => :'String',
        :'type_of_units' => :'String',
        :'is_exempt_from_tax' => :'Boolean',
        :'is_exempt_from_super' => :'Boolean',
        :'is_reportable_as_w1' => :'Boolean',
        :'earnings_type' => :'EarningsType',
        :'earnings_rate_id' => :'String',
        :'rate_type' => :'RateType',
        :'rate_per_unit' => :'String',
        :'multiplier' => :'BigDecimal',
        :'accrue_leave' => :'Boolean',
        :'amount' => :'BigDecimal',
        :'employment_termination_payment_type' => :'EmploymentTerminationPaymentType',
        :'updated_date_utc' => :'DateTime',
        :'current_record' => :'Boolean',
        :'allowance_type' => :'AllowanceType'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::EarningsRate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::EarningsRate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'account_code')
        self.account_code = attributes[:'account_code']
      end

      if attributes.key?(:'type_of_units')
        self.type_of_units = attributes[:'type_of_units']
      end

      if attributes.key?(:'is_exempt_from_tax')
        self.is_exempt_from_tax = attributes[:'is_exempt_from_tax']
      end

      if attributes.key?(:'is_exempt_from_super')
        self.is_exempt_from_super = attributes[:'is_exempt_from_super']
      end

      if attributes.key?(:'is_reportable_as_w1')
        self.is_reportable_as_w1 = attributes[:'is_reportable_as_w1']
      end

      if attributes.key?(:'earnings_type')
        self.earnings_type = attributes[:'earnings_type']
      end

      if attributes.key?(:'earnings_rate_id')
        self.earnings_rate_id = attributes[:'earnings_rate_id']
      end

      if attributes.key?(:'rate_type')
        self.rate_type = attributes[:'rate_type']
      end

      if attributes.key?(:'rate_per_unit')
        self.rate_per_unit = attributes[:'rate_per_unit']
      end

      if attributes.key?(:'multiplier')
        self.multiplier = attributes[:'multiplier']
      end

      if attributes.key?(:'accrue_leave')
        self.accrue_leave = attributes[:'accrue_leave']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'employment_termination_payment_type')
        self.employment_termination_payment_type = attributes[:'employment_termination_payment_type']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'current_record')
        self.current_record = attributes[:'current_record']
      end

      if attributes.key?(:'allowance_type')
        self.allowance_type = attributes[:'allowance_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@name.nil? && @name.to_s.length > 100
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 100.')
      end

      if !@type_of_units.nil? && @type_of_units.to_s.length > 50
        invalid_properties.push('invalid value for "type_of_units", the character length must be smaller than or equal to 50.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 100
      return false if !@type_of_units.nil? && @type_of_units.to_s.length > 50
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 100
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 100.'
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] type_of_units Value to be assigned
    def type_of_units=(type_of_units)
      if !type_of_units.nil? && type_of_units.to_s.length > 50
        fail ArgumentError, 'invalid value for "type_of_units", the character length must be smaller than or equal to 50.'
      end

      @type_of_units = type_of_units
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          account_code == o.account_code &&
          type_of_units == o.type_of_units &&
          is_exempt_from_tax == o.is_exempt_from_tax &&
          is_exempt_from_super == o.is_exempt_from_super &&
          is_reportable_as_w1 == o.is_reportable_as_w1 &&
          earnings_type == o.earnings_type &&
          earnings_rate_id == o.earnings_rate_id &&
          rate_type == o.rate_type &&
          rate_per_unit == o.rate_per_unit &&
          multiplier == o.multiplier &&
          accrue_leave == o.accrue_leave &&
          amount == o.amount &&
          employment_termination_payment_type == o.employment_termination_payment_type &&
          updated_date_utc == o.updated_date_utc &&
          current_record == o.current_record &&
          allowance_type == o.allowance_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, account_code, type_of_units, is_exempt_from_tax, is_exempt_from_super, is_reportable_as_w1, earnings_type, earnings_rate_id, rate_type, rate_per_unit, multiplier, accrue_leave, amount, employment_termination_payment_type, updated_date_utc, current_record, allowance_type].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::PayrollAu.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
        Time.at(seconds_since_epoch).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
