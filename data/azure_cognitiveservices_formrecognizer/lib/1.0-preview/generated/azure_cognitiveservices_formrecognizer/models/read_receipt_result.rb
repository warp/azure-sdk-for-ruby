# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::FormRecognizer::V1_0_preview
  module Models
    #
    # Analysis result of the 'Batch Read Receipt' operation.
    #
    class ReadReceiptResult

      include MsRestAzure

      # @return [TextOperationStatusCodes] Status of the read operation.
      # Possible values include: 'Not Started', 'Running', 'Failed',
      # 'Succeeded'
      attr_accessor :status

      # @return [Array<TextRecognitionResult>] Text recognition result of the
      # 'Batch Read Receipt' operation.
      attr_accessor :recognition_results

      # @return [Array<UnderstandingResult>] Semantic understanding result of
      # the 'Batch Read Receipt' operation.
      attr_accessor :understanding_results


      #
      # Mapper for ReadReceiptResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'readReceiptResult',
          type: {
            name: 'Composite',
            class_name: 'ReadReceiptResult',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'TextOperationStatusCodes'
                }
              },
              recognition_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'recognitionResults',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TextRecognitionResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TextRecognitionResult'
                      }
                  }
                }
              },
              understanding_results: {
                client_side_validation: true,
                required: false,
                serialized_name: 'understandingResults',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'UnderstandingResultElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'UnderstandingResult'
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
