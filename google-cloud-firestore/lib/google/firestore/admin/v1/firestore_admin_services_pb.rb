# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/firestore/admin/v1/firestore_admin.proto for package 'Google::Cloud::Firestore::Admin::V1'
# Original file comments:
# Copyright 2019 Google LLC.
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
#


require 'grpc'
require 'google/firestore/admin/v1/firestore_admin_pb'

module Google
  module Firestore
    module Admin
    end
  end
end
module Google::Firestore::Admin::V1
  module FirestoreAdmin
    # Operations are created by service `FirestoreAdmin`, but are accessed via
    # service `google.longrunning.Operations`.
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'google.firestore.admin.v1.FirestoreAdmin'

      # Creates a composite index. This returns a [google.longrunning.Operation][google.longrunning.Operation]
      # which may be used to track the status of the creation. The metadata for
      # the operation will be the type [IndexOperationMetadata][google.firestore.admin.v1.IndexOperationMetadata].
      rpc :CreateIndex, CreateIndexRequest, Google::Longrunning::Operation
      # Lists composite indexes.
      rpc :ListIndexes, ListIndexesRequest, ListIndexesResponse
      # Gets a composite index.
      rpc :GetIndex, GetIndexRequest, Index
      # Deletes a composite index.
      rpc :DeleteIndex, DeleteIndexRequest, Google::Protobuf::Empty
      # Gets the metadata and configuration for a Field.
      rpc :GetField, GetFieldRequest, Field
      # Updates a field configuration. Currently, field updates apply only to
      # single field index configuration. However, calls to
      # [FirestoreAdmin.UpdateField][google.firestore.admin.v1.FirestoreAdmin.UpdateField] should provide a field mask to avoid
      # changing any configuration that the caller isn't aware of. The field mask
      # should be specified as: `{ paths: "index_config" }`.
      #
      # This call returns a [google.longrunning.Operation][google.longrunning.Operation] which may be used to
      # track the status of the field update. The metadata for
      # the operation will be the type [FieldOperationMetadata][google.firestore.admin.v1.FieldOperationMetadata].
      #
      # To configure the default field settings for the database, use
      # the special `Field` with resource name:
      # `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields/*`.
      rpc :UpdateField, UpdateFieldRequest, Google::Longrunning::Operation
      # Lists the field configuration and metadata for this database.
      #
      # Currently, [FirestoreAdmin.ListFields][google.firestore.admin.v1.FirestoreAdmin.ListFields] only supports listing fields
      # that have been explicitly overridden. To issue this query, call
      # [FirestoreAdmin.ListFields][google.firestore.admin.v1.FirestoreAdmin.ListFields] with the filter set to
      # `indexConfig.usesAncestorConfig:false`.
      rpc :ListFields, ListFieldsRequest, ListFieldsResponse
      # Exports a copy of all or a subset of documents from Google Cloud Firestore
      # to another storage system, such as Google Cloud Storage. Recent updates to
      # documents may not be reflected in the export. The export occurs in the
      # background and its progress can be monitored and managed via the
      # Operation resource that is created. The output of an export may only be
      # used once the associated operation is done. If an export operation is
      # cancelled before completion it may leave partial data behind in Google
      # Cloud Storage.
      rpc :ExportDocuments, ExportDocumentsRequest, Google::Longrunning::Operation
      # Imports documents into Google Cloud Firestore. Existing documents with the
      # same name are overwritten. The import occurs in the background and its
      # progress can be monitored and managed via the Operation resource that is
      # created. If an ImportDocuments operation is cancelled, it is possible
      # that a subset of the data has already been imported to Cloud Firestore.
      rpc :ImportDocuments, ImportDocumentsRequest, Google::Longrunning::Operation
    end

    Stub = Service.rpc_stub_class
  end
end
