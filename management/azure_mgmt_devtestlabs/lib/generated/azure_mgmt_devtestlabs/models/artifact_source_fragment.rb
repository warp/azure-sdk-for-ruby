# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of an artifact source.
    #
    class ArtifactSourceFragment < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The artifact source's display name.
      attr_accessor :display_name

      # @return [String] The artifact source's URI.
      attr_accessor :uri

      # @return [SourceControlType] The artifact source's type. Possible values
      # include: 'VsoGit', 'GitHub'
      attr_accessor :source_type

      # @return [String] The folder containing artifacts.
      attr_accessor :folder_path

      # @return [String] The folder containing Azure Resource Manager
      # templates.
      attr_accessor :arm_template_folder_path

      # @return [String] The artifact source's branch reference.
      attr_accessor :branch_ref

      # @return [String] The security token to authenticate to the artifact
      # source.
      attr_accessor :security_token

      # @return [EnableStatus] Indicates if the artifact source is enabled
      # (values: Enabled, Disabled). Possible values include: 'Enabled',
      # 'Disabled'
      attr_accessor :status

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for ArtifactSourceFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArtifactSourceFragment',
          type: {
            name: 'Composite',
            class_name: 'ArtifactSourceFragment',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              display_name: {
                required: false,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              uri: {
                required: false,
                serialized_name: 'properties.uri',
                type: {
                  name: 'String'
                }
              },
              source_type: {
                required: false,
                serialized_name: 'properties.sourceType',
                type: {
                  name: 'String'
                }
              },
              folder_path: {
                required: false,
                serialized_name: 'properties.folderPath',
                type: {
                  name: 'String'
                }
              },
              arm_template_folder_path: {
                required: false,
                serialized_name: 'properties.armTemplateFolderPath',
                type: {
                  name: 'String'
                }
              },
              branch_ref: {
                required: false,
                serialized_name: 'properties.branchRef',
                type: {
                  name: 'String'
                }
              },
              security_token: {
                required: false,
                serialized_name: 'properties.securityToken',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
