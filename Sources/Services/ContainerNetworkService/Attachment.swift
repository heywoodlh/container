//===----------------------------------------------------------------------===//
// Copyright © 2025 Apple Inc. and the container project authors. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//===----------------------------------------------------------------------===//

/// A snapshot of a network interface allocated to a sandbox.
public struct Attachment: Codable, Sendable {
    /// The network ID associated with the attachment.
    public let network: String
    /// The hostname associated with the attachment.
    public let hostname: String
    /// The subnet CIDR, where the address is the container interface IPv4 address.
    public let address: String
    /// The IPv4 gateway address.
    public let gateway: String

    public init(network: String, hostname: String, address: String, gateway: String) {
        self.network = network
        self.hostname = hostname
        self.address = address
        self.gateway = gateway
    }
}
