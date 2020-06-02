# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_02_15
  module Models
    #
    # The list of language extension objects.
    #
    class LanguageExtensionsList

      include MsRestAzure

      # @return [Array<LanguageExtension>] The list of language extensions.
      attr_accessor :value


      #
      # Mapper for LanguageExtensionsList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LanguageExtensionsList',
          type: {
            name: 'Composite',
            class_name: 'LanguageExtensionsList',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LanguageExtensionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LanguageExtension'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
