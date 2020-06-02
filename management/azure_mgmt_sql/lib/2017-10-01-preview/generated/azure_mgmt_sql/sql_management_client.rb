# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  #
  # A service client - single point of access to the REST API.
  #
  class SqlManagementClient < MsRestAzure::AzureServiceClient
    include MsRestAzure
    include MsRestAzure::Serialization

    # @return [String] the base URI of the service.
    attr_accessor :base_url

    # @return Credentials needed for the client to connect to Azure.
    attr_reader :credentials

    # @return [String] The subscription ID that identifies an Azure
    # subscription.
    attr_accessor :subscription_id

    # @return [String] The API version to use for the request.
    attr_reader :api_version

    # @return [String] The preferred language for the response.
    attr_accessor :accept_language

    # @return [Integer] The retry timeout in seconds for Long Running
    # Operations. Default value is 30.
    attr_accessor :long_running_operation_retry_timeout

    # @return [Boolean] Whether a unique x-ms-client-request-id should be
    # generated. When set to true a unique x-ms-client-request-id value is
    # generated and included in each request. Default is true.
    attr_accessor :generate_client_request_id

    # @return [DatabaseOperations] database_operations
    attr_reader :database_operations

    # @return [ElasticPoolOperations] elastic_pool_operations
    attr_reader :elastic_pool_operations

    # @return [DatabaseVulnerabilityAssessmentScans]
    # database_vulnerability_assessment_scans
    attr_reader :database_vulnerability_assessment_scans

    # @return [ManagedDatabaseVulnerabilityAssessmentRuleBaselines]
    # managed_database_vulnerability_assessment_rule_baselines
    attr_reader :managed_database_vulnerability_assessment_rule_baselines

    # @return [ManagedDatabaseVulnerabilityAssessmentScans]
    # managed_database_vulnerability_assessment_scans
    attr_reader :managed_database_vulnerability_assessment_scans

    # @return [ManagedDatabaseVulnerabilityAssessments]
    # managed_database_vulnerability_assessments
    attr_reader :managed_database_vulnerability_assessments

    # @return [Capabilities] capabilities
    attr_reader :capabilities

    # @return [Databases] databases
    attr_reader :databases

    # @return [ElasticPools] elastic_pools
    attr_reader :elastic_pools

    # @return [InstanceFailoverGroups] instance_failover_groups
    attr_reader :instance_failover_groups

    # @return [BackupShortTermRetentionPolicies]
    # backup_short_term_retention_policies
    attr_reader :backup_short_term_retention_policies

    # @return [TdeCertificates] tde_certificates
    attr_reader :tde_certificates

    # @return [ManagedInstanceTdeCertificates]
    # managed_instance_tde_certificates
    attr_reader :managed_instance_tde_certificates

    # @return [ManagedInstanceKeys] managed_instance_keys
    attr_reader :managed_instance_keys

    # @return [ManagedInstanceEncryptionProtectors]
    # managed_instance_encryption_protectors
    attr_reader :managed_instance_encryption_protectors

    # @return [RecoverableManagedDatabases] recoverable_managed_databases
    attr_reader :recoverable_managed_databases

    #
    # Creates initializes a new instance of the SqlManagementClient class.
    # @param credentials [MsRest::ServiceClientCredentials] credentials to authorize HTTP requests made by the service client.
    # @param base_url [String] the base URI of the service.
    # @param options [Array] filters to be applied to the HTTP requests.
    #
    def initialize(credentials = nil, base_url = nil, options = nil)
      super(credentials, options)
      @base_url = base_url || 'https://management.azure.com'

      fail ArgumentError, 'invalid type of credentials input parameter' unless credentials.is_a?(MsRest::ServiceClientCredentials) unless credentials.nil?
      @credentials = credentials

      @database_operations = DatabaseOperations.new(self)
      @elastic_pool_operations = ElasticPoolOperations.new(self)
      @database_vulnerability_assessment_scans = DatabaseVulnerabilityAssessmentScans.new(self)
      @managed_database_vulnerability_assessment_rule_baselines = ManagedDatabaseVulnerabilityAssessmentRuleBaselines.new(self)
      @managed_database_vulnerability_assessment_scans = ManagedDatabaseVulnerabilityAssessmentScans.new(self)
      @managed_database_vulnerability_assessments = ManagedDatabaseVulnerabilityAssessments.new(self)
      @capabilities = Capabilities.new(self)
      @databases = Databases.new(self)
      @elastic_pools = ElasticPools.new(self)
      @instance_failover_groups = InstanceFailoverGroups.new(self)
      @backup_short_term_retention_policies = BackupShortTermRetentionPolicies.new(self)
      @tde_certificates = TdeCertificates.new(self)
      @managed_instance_tde_certificates = ManagedInstanceTdeCertificates.new(self)
      @managed_instance_keys = ManagedInstanceKeys.new(self)
      @managed_instance_encryption_protectors = ManagedInstanceEncryptionProtectors.new(self)
      @recoverable_managed_databases = RecoverableManagedDatabases.new(self)
      @api_version = '2017-10-01-preview'
      @accept_language = 'en-US'
      @long_running_operation_retry_timeout = 30
      @generate_client_request_id = true
      add_telemetry
    end

    #
    # Makes a request and returns the body of the response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Hash{String=>String}] containing the body of the response.
    # Example:
    #
    #  request_content = "{'location':'westus','tags':{'tag1':'val1','tag2':'val2'}}"
    #  path = "/path"
    #  options = {
    #    body: request_content,
    #    query_params: {'api-version' => '2016-02-01'}
    #  }
    #  result = @client.make_request(:put, path, options)
    #
    def make_request(method, path, options = {})
      result = make_request_with_http_info(method, path, options)
      result.body unless result.nil?
    end

    #
    # Makes a request and returns the operation response.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [MsRestAzure::AzureOperationResponse] Operation response containing the request, response and status.
    #
    def make_request_with_http_info(method, path, options = {})
      result = make_request_async(method, path, options).value!
      result.body = result.response.body.to_s.empty? ? nil : JSON.load(result.response.body)
      result
    end

    #
    # Makes a request asynchronously.
    # @param method [Symbol] with any of the following values :get, :put, :post, :patch, :delete.
    # @param path [String] the path, relative to {base_url}.
    # @param options [Hash{String=>String}] specifying any request options like :body.
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def make_request_async(method, path, options = {})
      fail ArgumentError, 'method is nil' if method.nil?
      fail ArgumentError, 'path is nil' if path.nil?

      request_url = options[:base_url] || @base_url
      if(!options[:headers].nil? && !options[:headers]['Content-Type'].nil?)
        @request_headers['Content-Type'] = options[:headers]['Content-Type']
      end

      request_headers = @request_headers
      request_headers.merge!({'accept-language' => @accept_language}) unless @accept_language.nil?
      options.merge!({headers: request_headers.merge(options[:headers] || {})})
      options.merge!({credentials: @credentials}) unless @credentials.nil?

      super(request_url, method, path, options)
    end


    private
    #
    # Adds telemetry information.
    #
    def add_telemetry
        sdk_information = 'azure_mgmt_sql'
        sdk_information = "#{sdk_information}/0.19.1"
        add_user_agent_information(sdk_information)
    end
  end
end
