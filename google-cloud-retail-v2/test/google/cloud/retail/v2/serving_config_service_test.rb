# frozen_string_literal: true

# Copyright 2022 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/retail/v2/serving_config_service_pb"
require "google/cloud/retail/v2/serving_config_service_services_pb"
require "google/cloud/retail/v2/serving_config_service"

class ::Google::Cloud::Retail::V2::ServingConfigService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_serving_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ServingConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    serving_config = {}
    serving_config_id = "hello world"

    create_serving_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_serving_config, name
      assert_kind_of ::Google::Cloud::Retail::V2::CreateServingConfigRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::ServingConfig), request["serving_config"]
      assert_equal "hello world", request["serving_config_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_serving_config_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_serving_config({ parent: parent, serving_config: serving_config, serving_config_id: serving_config_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_serving_config parent: parent, serving_config: serving_config, serving_config_id: serving_config_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_serving_config ::Google::Cloud::Retail::V2::CreateServingConfigRequest.new(parent: parent, serving_config: serving_config, serving_config_id: serving_config_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_serving_config({ parent: parent, serving_config: serving_config, serving_config_id: serving_config_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_serving_config(::Google::Cloud::Retail::V2::CreateServingConfigRequest.new(parent: parent, serving_config: serving_config, serving_config_id: serving_config_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_serving_config_client_stub.call_rpc_count
    end
  end

  def test_delete_serving_config
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_serving_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_serving_config, name
      assert_kind_of ::Google::Cloud::Retail::V2::DeleteServingConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_serving_config_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_serving_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_serving_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_serving_config ::Google::Cloud::Retail::V2::DeleteServingConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_serving_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_serving_config(::Google::Cloud::Retail::V2::DeleteServingConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_serving_config_client_stub.call_rpc_count
    end
  end

  def test_update_serving_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ServingConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = {}
    update_mask = {}

    update_serving_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_serving_config, name
      assert_kind_of ::Google::Cloud::Retail::V2::UpdateServingConfigRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Retail::V2::ServingConfig), request["serving_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_serving_config_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_serving_config({ serving_config: serving_config, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_serving_config serving_config: serving_config, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_serving_config ::Google::Cloud::Retail::V2::UpdateServingConfigRequest.new(serving_config: serving_config, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_serving_config({ serving_config: serving_config, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_serving_config(::Google::Cloud::Retail::V2::UpdateServingConfigRequest.new(serving_config: serving_config, update_mask: update_mask), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_serving_config_client_stub.call_rpc_count
    end
  end

  def test_get_serving_config
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ServingConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_serving_config_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_serving_config, name
      assert_kind_of ::Google::Cloud::Retail::V2::GetServingConfigRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_serving_config_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_serving_config({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_serving_config name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_serving_config ::Google::Cloud::Retail::V2::GetServingConfigRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_serving_config({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_serving_config(::Google::Cloud::Retail::V2::GetServingConfigRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_serving_config_client_stub.call_rpc_count
    end
  end

  def test_list_serving_configs
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ListServingConfigsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_serving_configs_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_serving_configs, name
      assert_kind_of ::Google::Cloud::Retail::V2::ListServingConfigsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_serving_configs_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_serving_configs({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_serving_configs parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_serving_configs ::Google::Cloud::Retail::V2::ListServingConfigsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_serving_configs({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_serving_configs(::Google::Cloud::Retail::V2::ListServingConfigsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_serving_configs_client_stub.call_rpc_count
    end
  end

  def test_add_control
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ServingConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    control_id = "hello world"

    add_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::AddControlRequest, request
      assert_equal "hello world", request["serving_config"]
      assert_equal "hello world", request["control_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_control({ serving_config: serving_config, control_id: control_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_control serving_config: serving_config, control_id: control_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_control ::Google::Cloud::Retail::V2::AddControlRequest.new(serving_config: serving_config, control_id: control_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_control({ serving_config: serving_config, control_id: control_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_control(::Google::Cloud::Retail::V2::AddControlRequest.new(serving_config: serving_config, control_id: control_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_control_client_stub.call_rpc_count
    end
  end

  def test_remove_control
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Retail::V2::ServingConfig.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    control_id = "hello world"

    remove_control_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :remove_control, name
      assert_kind_of ::Google::Cloud::Retail::V2::RemoveControlRequest, request
      assert_equal "hello world", request["serving_config"]
      assert_equal "hello world", request["control_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, remove_control_client_stub do
      # Create client
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.remove_control({ serving_config: serving_config, control_id: control_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.remove_control serving_config: serving_config, control_id: control_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.remove_control ::Google::Cloud::Retail::V2::RemoveControlRequest.new(serving_config: serving_config, control_id: control_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.remove_control({ serving_config: serving_config, control_id: control_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.remove_control(::Google::Cloud::Retail::V2::RemoveControlRequest.new(serving_config: serving_config, control_id: control_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, remove_control_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::Retail::V2::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Retail::V2::ServingConfigService::Client::Configuration, config
  end
end
