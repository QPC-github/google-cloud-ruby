# frozen_string_literal: true

# Copyright 2021 Google LLC
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
  module Rpc
    # The `Status` type defines a logical error model that is suitable for
    # different programming environments, including REST APIs and RPC APIs. It is
    # used by [gRPC](https://github.com/grpc). Each `Status` message contains
    # three pieces of data: error code, error message, and error details.
    #
    # You can find out more about this error model and how to work with it in the
    # [API Design Guide](https://cloud.google.com/apis/design/errors).
    # @!attribute [rw] code
    #   @return [::Integer]
    #     The status code, which should be an enum value of
    #     {::Google::Rpc::Code google.rpc.Code}.
    # @!attribute [rw] message
    #   @return [::String]
    #     A developer-facing error message, which should be in English. Any
    #     user-facing error message should be localized and sent in the
    #     {::Google::Rpc::Status#details google.rpc.Status.details} field, or localized
    #     by the client.
    # @!attribute [rw] details
    #   @return [::Array<::Google::Protobuf::Any>]
    #     A list of messages that carry the error details.  There is a common set of
    #     message types for APIs to use.
    class Status
      include ::Google::Protobuf::MessageExts
      extend ::Google::Protobuf::MessageExts::ClassMethods
    end
  end
end
