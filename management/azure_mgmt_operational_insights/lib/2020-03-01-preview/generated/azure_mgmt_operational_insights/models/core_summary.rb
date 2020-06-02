# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2020_03_01_preview
  module Models
    #
    # The core summary of a search.
    #
    class CoreSummary

      include MsRestAzure

      # @return [String] The status of a core summary.
      attr_accessor :status

      # @return [Integer] The number of documents of a core summary.
      attr_accessor :number_of_documents


      #
      # Mapper for CoreSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CoreSummary',
          type: {
            name: 'Composite',
            class_name: 'CoreSummary',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              number_of_documents: {
                client_side_validation: true,
                required: true,
                serialized_name: 'numberOfDocuments',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
