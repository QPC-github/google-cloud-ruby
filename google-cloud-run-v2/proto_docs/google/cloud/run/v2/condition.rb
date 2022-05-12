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


module Google
  module Cloud
    module Run
      module V2
        # Defines a status condition for a resource.
        # @!attribute [rw] type
        #   @return [::String]
        #     type is used to communicate the status of the reconciliation process.
        #     See also:
        #     https://github.com/knative/serving/blob/main/docs/spec/errors.md#error-conditions-and-reporting
        #     Types common to all resources include:
        #     * "Ready": True when the Resource is ready.
        # @!attribute [rw] state
        #   @return [::Google::Cloud::Run::V2::Condition::State]
        #     State of the condition.
        # @!attribute [rw] message
        #   @return [::String]
        #     Human readable message indicating details about the current status.
        # @!attribute [rw] last_transition_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Last time the condition transitioned from one status to another.
        # @!attribute [rw] severity
        #   @return [::Google::Cloud::Run::V2::Condition::Severity]
        #     How to interpret failures of this condition, one of Error, Warning, Info
        # @!attribute [rw] reason
        #   @return [::Google::Cloud::Run::V2::Condition::CommonReason]
        #     A common (service-level) reason for this condition.
        # @!attribute [rw] revision_reason
        #   @return [::Google::Cloud::Run::V2::Condition::RevisionReason]
        #     A reason for the revision condition.
        # @!attribute [rw] execution_reason
        #   @return [::Google::Cloud::Run::V2::Condition::ExecutionReason]
        #     A reason for the execution condition.
        class Condition
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Represents the possible Condition states.
          module State
            # The default value. This value is used if the state is omitted.
            STATE_UNSPECIFIED = 0

            # Transient state: Reconciliation has not started yet.
            CONDITION_PENDING = 1

            # Transient state: reconciliation is still in progress.
            CONDITION_RECONCILING = 2

            # Terminal state: Reconciliation did not succeed.
            CONDITION_FAILED = 3

            # Terminal state: Reconciliation completed successfully.
            CONDITION_SUCCEEDED = 4
          end

          # Represents the severity of the condition failures.
          module Severity
            # Unspecified severity
            SEVERITY_UNSPECIFIED = 0

            # Error severity.
            ERROR = 1

            # Warning severity.
            WARNING = 2

            # Info severity.
            INFO = 3
          end

          # Reasons common to all types of conditions.
          module CommonReason
            # Default value.
            COMMON_REASON_UNDEFINED = 0

            # Reason unknown. Further details will be in message.
            UNKNOWN = 1

            # Revision creation process failed.
            REVISION_FAILED = 3

            # Timed out waiting for completion.
            PROGRESS_DEADLINE_EXCEEDED = 4

            # The container image path is incorrect.
            CONTAINER_MISSING = 6

            # Insufficient permissions on the container image.
            CONTAINER_PERMISSION_DENIED = 7

            # Container image is not authorized by policy.
            CONTAINER_IMAGE_UNAUTHORIZED = 8

            # Container image policy authorization check failed.
            CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED = 9

            # Insufficient permissions on encryption key.
            ENCRYPTION_KEY_PERMISSION_DENIED = 10

            # Permission check on encryption key failed.
            ENCRYPTION_KEY_CHECK_FAILED = 11

            # At least one Access check on secrets failed.
            SECRETS_ACCESS_CHECK_FAILED = 12

            # Waiting for operation to complete.
            WAITING_FOR_OPERATION = 13

            # System will retry immediately.
            IMMEDIATE_RETRY = 14

            # System will retry later; current attempt failed.
            POSTPONED_RETRY = 15

            # An internal error occurred. Further information may be in the message.
            INTERNAL = 16
          end

          # Reasons specific to Revision resource.
          module RevisionReason
            # Default value.
            REVISION_REASON_UNDEFINED = 0

            # Revision in Pending state.
            PENDING = 1

            # Revision is in Reserve state.
            RESERVE = 2

            # Revision is Retired.
            RETIRED = 3

            # Revision is being retired.
            RETIRING = 4

            # Revision is being recreated.
            RECREATING = 5

            # There was a health check error.
            HEALTH_CHECK_CONTAINER_ERROR = 6

            # Health check failed due to user error from customized path of the
            # container. System will retry.
            CUSTOMIZED_PATH_RESPONSE_PENDING = 7

            # A revision with min_instance_count > 0 was created and is reserved, but
            # it was not configured to serve traffic, so it's not live. This can also
            # happen momentarily during traffic migration.
            MIN_INSTANCES_NOT_PROVISIONED = 8

            # The maximum allowed number of active revisions has been reached.
            ACTIVE_REVISION_LIMIT_REACHED = 9

            # There was no deployment defined.
            # This value is no longer used, but Services created in older versions of
            # the API might contain this value.
            NO_DEPLOYMENT = 10

            # A revision's container has no port specified since the revision is of a
            # manually scaled service with 0 instance count
            HEALTH_CHECK_SKIPPED = 11
          end

          # Reasons specific to Execution resource.
          module ExecutionReason
            # Default value.
            EXECUTION_REASON_UNDEFINED = 0

            # Internal system error getting execution status. System will retry.
            JOB_STATUS_SERVICE_POLLING_ERROR = 1

            # A task reached its retry limit and the last attempt failed due to the
            # user container exiting with a non-zero exit code.
            NON_ZERO_EXIT_CODE = 2
          end
        end
      end
    end
  end
end