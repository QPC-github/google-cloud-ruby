# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/conversation_dataset.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/gcs_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/conversation_dataset.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.ConversationInfo" do
      optional :language_code, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.InputConfig" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.dialogflow.v2.GcsSources"
      end
    end
    add_message "google.cloud.dialogflow.v2.ConversationDataset" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :input_config, :message, 5, "google.cloud.dialogflow.v2.InputConfig"
      optional :conversation_info, :message, 6, "google.cloud.dialogflow.v2.ConversationInfo"
      optional :conversation_count, :int64, 7
    end
    add_message "google.cloud.dialogflow.v2.CreateConversationDatasetRequest" do
      optional :parent, :string, 1
      optional :conversation_dataset, :message, 2, "google.cloud.dialogflow.v2.ConversationDataset"
    end
    add_message "google.cloud.dialogflow.v2.GetConversationDatasetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.ListConversationDatasetsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dialogflow.v2.ListConversationDatasetsResponse" do
      repeated :conversation_datasets, :message, 1, "google.cloud.dialogflow.v2.ConversationDataset"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dialogflow.v2.DeleteConversationDatasetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.ImportConversationDataRequest" do
      optional :name, :string, 1
      optional :input_config, :message, 2, "google.cloud.dialogflow.v2.InputConfig"
    end
    add_message "google.cloud.dialogflow.v2.ImportConversationDataOperationMetadata" do
      optional :conversation_dataset, :string, 1
      repeated :partial_failures, :message, 2, "google.rpc.Status"
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.dialogflow.v2.ImportConversationDataOperationResponse" do
      optional :conversation_dataset, :string, 1
      optional :import_count, :int32, 3
    end
    add_message "google.cloud.dialogflow.v2.CreateConversationDatasetOperationMetadata" do
      optional :conversation_dataset, :string, 1
    end
    add_message "google.cloud.dialogflow.v2.DeleteConversationDatasetOperationMetadata" do
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        ConversationInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationInfo").msgclass
        InputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.InputConfig").msgclass
        ConversationDataset = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ConversationDataset").msgclass
        CreateConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationDatasetRequest").msgclass
        GetConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.GetConversationDatasetRequest").msgclass
        ListConversationDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationDatasetsRequest").msgclass
        ListConversationDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ListConversationDatasetsResponse").msgclass
        DeleteConversationDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationDatasetRequest").msgclass
        ImportConversationDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataRequest").msgclass
        ImportConversationDataOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataOperationMetadata").msgclass
        ImportConversationDataOperationResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.ImportConversationDataOperationResponse").msgclass
        CreateConversationDatasetOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.CreateConversationDatasetOperationMetadata").msgclass
        DeleteConversationDatasetOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DeleteConversationDatasetOperationMetadata").msgclass
      end
    end
  end
end
