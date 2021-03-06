// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a Telegram user or bot.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#user>

public struct User: JsonConvertible, InternalJsonConvertible {
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

    /// Unique identifier for this user or bot
    public var id: Int64 {
        get { return internalJson["id"].int64Value }
        set { internalJson["id"].int64Value = newValue }
    }

    /// True, if this user is a bot
    public var isBot: Bool {
        get { return internalJson["is_bot"].boolValue }
        set { internalJson["is_bot"].boolValue = newValue }
    }

    /// User‘s or bot’s first name
    public var firstName: String {
        get { return internalJson["first_name"].stringValue }
        set { internalJson["first_name"].stringValue = newValue }
    }

    /// Optional. User‘s or bot’s last name
    public var lastName: String? {
        get { return internalJson["last_name"].string }
        set { internalJson["last_name"].string = newValue }
    }

    /// Optional. User‘s or bot’s username
    public var username: String? {
        get { return internalJson["username"].string }
        set { internalJson["username"].string = newValue }
    }

    /// Optional. IETF language tag of the user's language
    public var languageCode: String? {
        get { return internalJson["language_code"].string }
        set { internalJson["language_code"].string = newValue }
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
