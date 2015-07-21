# Code generated by Microsoft (R) AutoRest Code Generator 0.11.0.0
# Changes may cause incorrect behavior and will be lost if the code is


module AzureResourceManagement
  #
  # A service client - single point of access to the REST API.
  #
  class ResourceManagementClient < MsRestAzure::AzureServiceClient
    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return [ServiceClientCredentials] Management credentials for Azure.
    attr_reader :credentials

    # @return [String] Gets subscription credentials which uniquely identify
    # Microsoft Azure subscription. The subscription ID forms part of the URI
    # for every service call.
    attr_accessor :subscription_id

    # @return [String] Client Api Version.
    attr_reader :api_version

    # @return [String] Gets or sets the preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout for Long Running Operations.
    attr_accessor :long_running_operation_retry_timeout

    # @return [ServiceClient] Subscription credentials which uniquely identify
    # client subscription.
    attr_accessor :credentials

    # @return providers
    attr_reader :providers

    # @return resource_groups
    attr_reader :resource_groups

    # @return resources
    attr_reader :resources

    # @return tags
    attr_reader :tags

    # @return deployment_operations
    attr_reader :deployment_operations

    # @return resource_provider_operation_details
    attr_reader :resource_provider_operation_details

    # @return deployments
    attr_reader :deployments

    #
    # Creates initializes a new instance of the ResourceManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'credentials is nil' if credentials.nil?
      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials)
      @credentials = credentials

      @providers = Providers.new(self)
      @resource_groups = ResourceGroups.new(self)
      @resources = Resources.new(self)
      @tags = Tags.new(self)
      @deployment_operations = DeploymentOperations.new(self)
      @resource_provider_operation_details = ResourceProviderOperationDetails.new(self)
      @deployments = Deployments.new(self)
      @api_version = "2014-04-01-preview"
      @accept_language = "en-US"
    end

  end
end
