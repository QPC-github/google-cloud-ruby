# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/firestore/v1/firestore.proto for package 'Google::Cloud::Firestore::V1'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


require 'grpc'
require 'google/firestore/v1/firestore_pb'

module Google
  module Firestore
  end
end
module Google::Firestore::V1
  module Firestore
    # Specification of the Firestore API.
    #
    # The Cloud Firestore service.
    #
    # Cloud Firestore is a fast, fully managed, serverless, cloud-native NoSQL
    # document database that simplifies storing, syncing, and querying data for
    # your mobile, web, and IoT apps at global scale. Its client libraries provide
    # live synchronization and offline support, while its security features and
    # integrations with Firebase and Google Cloud Platform (GCP) accelerate
    # building truly serverless apps.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'google.firestore.v1.Firestore'

      # Gets a single document.
      rpc :GetDocument, GetDocumentRequest, Document
      # Lists documents.
      rpc :ListDocuments, ListDocumentsRequest, ListDocumentsResponse
      # Updates or inserts a document.
      rpc :UpdateDocument, UpdateDocumentRequest, Document
      # Deletes a document.
      rpc :DeleteDocument, DeleteDocumentRequest, Google::Protobuf::Empty
      # Gets multiple documents.
      #
      # Documents returned by this method are not guaranteed to be returned in the
      # same order that they were requested.
      rpc :BatchGetDocuments, BatchGetDocumentsRequest, stream(BatchGetDocumentsResponse)
      # Starts a new transaction.
      rpc :BeginTransaction, BeginTransactionRequest, BeginTransactionResponse
      # Commits a transaction, while optionally updating documents.
      rpc :Commit, CommitRequest, CommitResponse
      # Rolls back a transaction.
      rpc :Rollback, RollbackRequest, Google::Protobuf::Empty
      # Runs a query.
      rpc :RunQuery, RunQueryRequest, stream(RunQueryResponse)
      # Partitions a query by returning partition cursors that can be used to run
      # the query in parallel. The returned partition cursors are split points that
      # can be used by RunQuery as starting/end points for the query results.
      rpc :PartitionQuery, PartitionQueryRequest, PartitionQueryResponse
      # Streams batches of document updates and deletes, in order.
      rpc :Write, stream(WriteRequest), stream(WriteResponse)
      # Listens to changes.
      rpc :Listen, stream(ListenRequest), stream(ListenResponse)
      # Lists all the collection IDs underneath a document.
      rpc :ListCollectionIds, ListCollectionIdsRequest, ListCollectionIdsResponse
      # Applies a batch of write operations.
      #
      # The BatchWrite method does not apply the write operations atomically
      # and can apply them out of order. Method does not allow more than one write
      # per document. Each write succeeds or fails independently. See the
      # [BatchWriteResponse][google.firestore.v1.BatchWriteResponse] for the success status of each write.
      #
      # If you require an atomically applied set of writes, use
      # [Commit][google.firestore.v1.Firestore.Commit] instead.
      rpc :BatchWrite, BatchWriteRequest, BatchWriteResponse
      # Creates a new document.
      rpc :CreateDocument, CreateDocumentRequest, Document
    end

    Stub = Service.rpc_stub_class
  end
end
