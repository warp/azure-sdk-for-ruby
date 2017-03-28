# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # A web application firewall rule set.
    #
    class ApplicationGatewayFirewallRuleSet < MsRestAzure::Resource

      include MsRestAzure

      # @return [String] The provisioning state of the web application firewall
      # rule set.
      attr_accessor :provisioning_state

      # @return [String] The type of the web application firewall rule set.
      attr_accessor :rule_set_type

      # @return [String] The version of the web application firewall rule set
      # type.
      attr_accessor :rule_set_version

      # @return [Array<ApplicationGatewayFirewallRuleGroup>] The rule groups of
      # the web application firewall rule set.
      attr_accessor :rule_groups


      #
      # Mapper for ApplicationGatewayFirewallRuleSet class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayFirewallRuleSet',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFirewallRuleSet',
            model_properties: {
              id: {
                required: false,
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
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              rule_set_type: {
                required: true,
                serialized_name: 'properties.ruleSetType',
                type: {
                  name: 'String'
                }
              },
              rule_set_version: {
                required: true,
                serialized_name: 'properties.ruleSetVersion',
                type: {
                  name: 'String'
                }
              },
              rule_groups: {
                required: true,
                serialized_name: 'properties.ruleGroups',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ApplicationGatewayFirewallRuleGroupElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ApplicationGatewayFirewallRuleGroup'
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
