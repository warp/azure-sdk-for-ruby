# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module AzureResourceManagement
  module Models
    #
    # Model object.
    #
    class ResourceProviderOperationDefinition
      # @return [String] Gets or sets the provider operation name.
      attr_accessor :name

      # @return [ResourceProviderOperationDisplayProperties] Gets or sets the
      # display property of the provider operation.
      attr_accessor :display

      #
      # Validate the object. Throws ArgumentError if validation fails.
      #
      def validate
        @display.validate unless @display.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.display
        if (serialized_property)
          serialized_property = AzureResourceManagement::Models::ResourceProviderOperationDisplayProperties.serialize_object(serialized_property)
        end
        output_object['display'] = serialized_property unless serialized_property.nil?
        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [ResourceProviderOperationDefinition] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = ResourceProviderOperationDefinition.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['display']
        if (deserialized_property)
          deserialized_property = AzureResourceManagement::Models::ResourceProviderOperationDisplayProperties.deserialize_object(deserialized_property)
        end
        output_object.display = deserialized_property
        output_object.validate
        output_object
      end
    end
  end
end
