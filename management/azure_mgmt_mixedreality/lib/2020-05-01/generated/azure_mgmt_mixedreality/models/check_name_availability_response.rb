# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2020_05_01
  module Models
    #
    # Check Name Availability Response
    #
    class CheckNameAvailabilityResponse

      include MsRestAzure

      # @return [NameAvailability] if name Available. Possible values include:
      # 'true', 'false'
      attr_accessor :name_available

      # @return [NameUnavailableReason] Resource Name To Verify. Possible
      # values include: 'Invalid', 'AlreadyExists'
      attr_accessor :reason

      # @return [String] detail message
      attr_accessor :message


      #
      # Mapper for CheckNameAvailabilityResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckNameAvailabilityResponse',
          type: {
            name: 'Composite',
            class_name: 'CheckNameAvailabilityResponse',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'String'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
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
