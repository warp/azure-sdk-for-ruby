# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Kusto::Mgmt::V2020_02_15
  module Models
    #
    # The language extension object.
    #
    class LanguageExtension

      include MsRestAzure

      # @return [LanguageExtensionName] The language extension name. Possible
      # values include: 'PYTHON', 'R'
      attr_accessor :language_extension_name


      #
      # Mapper for LanguageExtension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LanguageExtension',
          type: {
            name: 'Composite',
            class_name: 'LanguageExtension',
            model_properties: {
              language_extension_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'languageExtensionName',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
