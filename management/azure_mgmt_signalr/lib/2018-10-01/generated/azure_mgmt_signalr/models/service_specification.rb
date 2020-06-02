# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Signalr::Mgmt::V2018_10_01
  module Models
    #
    # An object that describes a specification.
    #
    class ServiceSpecification

      include MsRestAzure

      # @return [Array<MetricSpecification>] Specifications of the Metrics for
      # Azure Monitoring.
      attr_accessor :metric_specifications

      # @return [Array<LogSpecification>] Specifications of the Logs for Azure
      # Monitoring.
      attr_accessor :log_specifications


      #
      # Mapper for ServiceSpecification class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceSpecification',
          type: {
            name: 'Composite',
            class_name: 'ServiceSpecification',
            model_properties: {
              metric_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metricSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MetricSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MetricSpecification'
                      }
                  }
                }
              },
              log_specifications: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logSpecifications',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LogSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LogSpecification'
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
