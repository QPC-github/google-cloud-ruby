# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/run/v2/job.proto for package 'google.cloud.run.v2'
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
require 'google/cloud/run/v2/job_pb'

module Google
  module Cloud
    module Run
      module V2
        module Jobs
          # Cloud Run Job Control Plane API.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.run.v2.Jobs'

            # Creates a Job.
            rpc :CreateJob, ::Google::Cloud::Run::V2::CreateJobRequest, ::Google::Longrunning::Operation
            # Gets information about a Job.
            rpc :GetJob, ::Google::Cloud::Run::V2::GetJobRequest, ::Google::Cloud::Run::V2::Job
            # Lists Jobs.
            rpc :ListJobs, ::Google::Cloud::Run::V2::ListJobsRequest, ::Google::Cloud::Run::V2::ListJobsResponse
            # Updates a Job.
            rpc :UpdateJob, ::Google::Cloud::Run::V2::UpdateJobRequest, ::Google::Longrunning::Operation
            # Deletes a Job.
            rpc :DeleteJob, ::Google::Cloud::Run::V2::DeleteJobRequest, ::Google::Longrunning::Operation
            # Triggers creation of a new Execution of this Job.
            rpc :RunJob, ::Google::Cloud::Run::V2::RunJobRequest, ::Google::Longrunning::Operation
            # Gets the IAM Access Control policy currently in effect for the given Job.
            # This result does not include any inherited policies.
            rpc :GetIamPolicy, ::Google::Iam::V1::GetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Sets the IAM Access control policy for the specified Job. Overwrites
            # any existing policy.
            rpc :SetIamPolicy, ::Google::Iam::V1::SetIamPolicyRequest, ::Google::Iam::V1::Policy
            # Returns permissions that a caller has on the specified Project.
            #
            # There are no permissions required for making this API call.
            rpc :TestIamPermissions, ::Google::Iam::V1::TestIamPermissionsRequest, ::Google::Iam::V1::TestIamPermissionsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end