# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-07-01/generated/azure_mgmt_policy_insights/module_definition'
require 'ms_rest_azure'

module Azure::PolicyInsights::Mgmt::V2019_07_01
  autoload :Remediations,                                       '2019-07-01/generated/azure_mgmt_policy_insights/remediations.rb'
  autoload :PolicyInsightsClient,                               '2019-07-01/generated/azure_mgmt_policy_insights/policy_insights_client.rb'

  module Models
    autoload :ErrorDefinition,                                    '2019-07-01/generated/azure_mgmt_policy_insights/models/error_definition.rb'
    autoload :RemediationFilters,                                 '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation_filters.rb'
    autoload :RemediationDeployment,                              '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation_deployment.rb'
    autoload :Remediation,                                        '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation.rb'
    autoload :RemediationDeploymentsListResult,                   '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation_deployments_list_result.rb'
    autoload :TypedErrorInfo,                                     '2019-07-01/generated/azure_mgmt_policy_insights/models/typed_error_info.rb'
    autoload :ErrorResponse,                                      '2019-07-01/generated/azure_mgmt_policy_insights/models/error_response.rb'
    autoload :RemediationListResult,                              '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation_list_result.rb'
    autoload :QueryOptions,                                       '2019-07-01/generated/azure_mgmt_policy_insights/models/query_options.rb'
    autoload :RemediationDeploymentSummary,                       '2019-07-01/generated/azure_mgmt_policy_insights/models/remediation_deployment_summary.rb'
    autoload :ResourceDiscoveryMode,                              '2019-07-01/generated/azure_mgmt_policy_insights/models/resource_discovery_mode.rb'
  end
end
