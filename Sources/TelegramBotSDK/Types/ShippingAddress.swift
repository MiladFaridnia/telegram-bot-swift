// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a shipping address.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#shippingaddress>

public struct ShippingAddress: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// ISO 3166-1 alpha-2 country code
    public var countryCode: String {
        get { return internalJson["country_code"].stringValue }
        set { internalJson["country_code"].stringValue = newValue }
    }

    /// State, if applicable
    public var state: String {
        get { return internalJson["state"].stringValue }
        set { internalJson["state"].stringValue = newValue }
    }

    /// City
    public var city: String {
        get { return internalJson["city"].stringValue }
        set { internalJson["city"].stringValue = newValue }
    }

    /// First line for the address
    public var streetLine1: String {
        get { return internalJson["street_line1"].stringValue }
        set { internalJson["street_line1"].stringValue = newValue }
    }

    /// Second line for the address
    public var streetLine2: String {
        get { return internalJson["street_line2"].stringValue }
        set { internalJson["street_line2"].stringValue = newValue }
    }

    /// Address post code
    public var postCode: String {
        get { return internalJson["post_code"].stringValue }
        set { internalJson["post_code"].stringValue = newValue }
    }

    internal init(internalJson: JSON = [:]) {
        self.internalJson = internalJson
    }
    public init(json: Any) {
        self.internalJson = JSON(json)
    }
    public init(data: Data) {
        self.internalJson = JSON(data: data)
    }
}
