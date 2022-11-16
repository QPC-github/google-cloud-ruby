# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/beyondcorp/appgateways/v1/app_gateways_service.proto for package 'Google.Cloud.BeyondCorp.AppGateways.V1'
# Original file comments:
# Copyright 2022 Google LLC
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
require 'google/cloud/beyondcorp/appgateways/v1/app_gateways_service_pb'

module Google
  module Cloud
    module BeyondCorp
      module AppGateways
        module V1
          module AppGatewaysService
            # API Overview:
            #
            # The `beyondcorp.googleapis.com` service implements the Google Cloud
            # BeyondCorp API.
            #
            # Data Model:
            #
            # The AppGatewaysService exposes the following resources:
            #
            # * AppGateways, named as follows:
            #   `projects/{project_id}/locations/{location_id}/appGateways/{app_gateway_id}`.
            #
            # The AppGatewaysService service provides methods to manage
            # (create/read/update/delete) BeyondCorp AppGateways.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.beyondcorp.appgateways.v1.AppGatewaysService'

              # Lists AppGateways in a given project and location.
              rpc :ListAppGateways, ::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysRequest, ::Google::Cloud::BeyondCorp::AppGateways::V1::ListAppGatewaysResponse
              # Gets details of a single AppGateway.
              rpc :GetAppGateway, ::Google::Cloud::BeyondCorp::AppGateways::V1::GetAppGatewayRequest, ::Google::Cloud::BeyondCorp::AppGateways::V1::AppGateway
              # Creates a new AppGateway in a given project and location.
              rpc :CreateAppGateway, ::Google::Cloud::BeyondCorp::AppGateways::V1::CreateAppGatewayRequest, ::Google::Longrunning::Operation
              # Deletes a single AppGateway.
              rpc :DeleteAppGateway, ::Google::Cloud::BeyondCorp::AppGateways::V1::DeleteAppGatewayRequest, ::Google::Longrunning::Operation
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
