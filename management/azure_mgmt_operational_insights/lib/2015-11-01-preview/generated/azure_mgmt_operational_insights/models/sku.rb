# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_11_01_preview
  module Models
    #
    # The SKU (tier) of a workspace.
    #
    class Sku

      include MsRestAzure

      # @return [SkuNameEnum] The name of the SKU. Possible values include:
      # 'Free', 'Standard', 'Premium', 'PerNode', 'PerGB2018', 'Standalone',
      # 'CapacityReservation'
      attr_accessor :name


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
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
