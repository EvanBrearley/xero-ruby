=begin
#Xero Assets API

#This is the Xero Assets API

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Assets
  require 'bigdecimal'

  class Asset
    # The Xero-generated Id for the asset
    attr_accessor :asset_id
    
    # The name of the asset
    attr_accessor :asset_name
    
    # The Xero-generated Id for the asset type
    attr_accessor :asset_type_id
    
    # Must be unique.
    attr_accessor :asset_number
    
    # The date the asset was purchased YYYY-MM-DD
    attr_accessor :purchase_date
    
    # The purchase price of the asset
    attr_accessor :purchase_price
    
    # The date the asset was disposed
    attr_accessor :disposal_date
    
    # The price the asset was disposed at
    attr_accessor :disposal_price
    

    attr_accessor :asset_status
    
    # The date the asset’s warranty expires (if needed) YYYY-MM-DD
    attr_accessor :warranty_expiry_date
    
    # The asset's serial number
    attr_accessor :serial_number
    

    attr_accessor :book_depreciation_setting
    

    attr_accessor :book_depreciation_detail
    
    # Boolean to indicate whether depreciation can be rolled back for this asset individually. This is true if it doesn't have 'legacy' journal entries and if there is no lock period that would prevent this asset from rolling back.
    attr_accessor :can_rollback
    
    # The accounting value of the asset
    attr_accessor :accounting_book_value
    
    # Boolean to indicate whether delete is enabled
    attr_accessor :is_delete_enabled_for_date
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'asset_id' => :'assetId',
        :'asset_name' => :'assetName',
        :'asset_type_id' => :'assetTypeId',
        :'asset_number' => :'assetNumber',
        :'purchase_date' => :'purchaseDate',
        :'purchase_price' => :'purchasePrice',
        :'disposal_date' => :'disposalDate',
        :'disposal_price' => :'disposalPrice',
        :'asset_status' => :'assetStatus',
        :'warranty_expiry_date' => :'warrantyExpiryDate',
        :'serial_number' => :'serialNumber',
        :'book_depreciation_setting' => :'bookDepreciationSetting',
        :'book_depreciation_detail' => :'bookDepreciationDetail',
        :'can_rollback' => :'canRollback',
        :'accounting_book_value' => :'accountingBookValue',
        :'is_delete_enabled_for_date' => :'isDeleteEnabledForDate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asset_id' => :'String',
        :'asset_name' => :'String',
        :'asset_type_id' => :'String',
        :'asset_number' => :'String',
        :'purchase_date' => :'Date',
        :'purchase_price' => :'BigDecimal',
        :'disposal_date' => :'Date',
        :'disposal_price' => :'BigDecimal',
        :'asset_status' => :'AssetStatus',
        :'warranty_expiry_date' => :'String',
        :'serial_number' => :'String',
        :'book_depreciation_setting' => :'BookDepreciationSetting',
        :'book_depreciation_detail' => :'BookDepreciationDetail',
        :'can_rollback' => :'Boolean',
        :'accounting_book_value' => :'BigDecimal',
        :'is_delete_enabled_for_date' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Assets::Asset` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Assets::Asset`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'asset_name')
        self.asset_name = attributes[:'asset_name']
      end

      if attributes.key?(:'asset_type_id')
        self.asset_type_id = attributes[:'asset_type_id']
      end

      if attributes.key?(:'asset_number')
        self.asset_number = attributes[:'asset_number']
      end

      if attributes.key?(:'purchase_date')
        self.purchase_date = attributes[:'purchase_date']
      end

      if attributes.key?(:'purchase_price')
        self.purchase_price = attributes[:'purchase_price']
      end

      if attributes.key?(:'disposal_date')
        self.disposal_date = attributes[:'disposal_date']
      end

      if attributes.key?(:'disposal_price')
        self.disposal_price = attributes[:'disposal_price']
      end

      if attributes.key?(:'asset_status')
        self.asset_status = attributes[:'asset_status']
      end

      if attributes.key?(:'warranty_expiry_date')
        self.warranty_expiry_date = attributes[:'warranty_expiry_date']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'book_depreciation_setting')
        self.book_depreciation_setting = attributes[:'book_depreciation_setting']
      end

      if attributes.key?(:'book_depreciation_detail')
        self.book_depreciation_detail = attributes[:'book_depreciation_detail']
      end

      if attributes.key?(:'can_rollback')
        self.can_rollback = attributes[:'can_rollback']
      end

      if attributes.key?(:'accounting_book_value')
        self.accounting_book_value = attributes[:'accounting_book_value']
      end

      if attributes.key?(:'is_delete_enabled_for_date')
        self.is_delete_enabled_for_date = attributes[:'is_delete_enabled_for_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @asset_name.nil?
        invalid_properties.push('invalid value for "asset_name", asset_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @asset_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asset_id == o.asset_id &&
          asset_name == o.asset_name &&
          asset_type_id == o.asset_type_id &&
          asset_number == o.asset_number &&
          purchase_date == o.purchase_date &&
          purchase_price == o.purchase_price &&
          disposal_date == o.disposal_date &&
          disposal_price == o.disposal_price &&
          asset_status == o.asset_status &&
          warranty_expiry_date == o.warranty_expiry_date &&
          serial_number == o.serial_number &&
          book_depreciation_setting == o.book_depreciation_setting &&
          book_depreciation_detail == o.book_depreciation_detail &&
          can_rollback == o.can_rollback &&
          accounting_book_value == o.accounting_book_value &&
          is_delete_enabled_for_date == o.is_delete_enabled_for_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asset_id, asset_name, asset_type_id, asset_number, purchase_date, purchase_price, disposal_date, disposal_price, asset_status, warranty_expiry_date, serial_number, book_depreciation_setting, book_depreciation_detail, can_rollback, accounting_book_value, is_delete_enabled_for_date].hash
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
        XeroRuby::Assets.const_get(type).build_from_hash(value)
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
