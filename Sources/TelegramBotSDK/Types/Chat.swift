// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a chat.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#chat>

public struct Chat: JsonConvertible, InternalJsonConvertible {
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

    /// Unique identifier for this chat. This number may be greater than 32 bits and some programming languages may have difficulty/silent defects in interpreting it. But it is smaller than 52 bits, so a signed 64 bit integer or double-precision float type are safe for storing this identifier.
    public var id: Int64 {
        get { return internalJson["id"].int64Value }
        set { internalJson["id"].int64Value = newValue }
    }

    /// Type of chat, can be either “private”, “group”, “supergroup” or “channel”
    public var typeString: String {
        get { return internalJson["type"].stringValue }
        set { internalJson["type"].stringValue = newValue }
    }

    /// Optional. Title, for supergroups, channels and group chats
    public var title: String? {
        get { return internalJson["title"].string }
        set { internalJson["title"].string = newValue }
    }

    /// Optional. Username, for private chats, supergroups and channels if available
    public var username: String? {
        get { return internalJson["username"].string }
        set { internalJson["username"].string = newValue }
    }

    /// Optional. First name of the other party in a private chat
    public var firstName: String? {
        get { return internalJson["first_name"].string }
        set { internalJson["first_name"].string = newValue }
    }

    /// Optional. Last name of the other party in a private chat
    public var lastName: String? {
        get { return internalJson["last_name"].string }
        set { internalJson["last_name"].string = newValue }
    }

    /// Optional. True if a group has ‘All Members Are Admins’ enabled.
    public var allMembersAreAdministrators: Bool? {
        get { return internalJson["all_members_are_administrators"].bool }
        set { internalJson["all_members_are_administrators"].bool = newValue }
    }

    /// Optional. Chat photo. Returned only in getChat.
    public var photo: ChatPhoto? {
        get {
            let value = internalJson["photo"]
            return value.isNullOrUnknown ? nil : ChatPhoto(internalJson: value)
        }
        set {
            internalJson["photo"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. Description, for supergroups and channel chats. Returned only in getChat.
    public var description: String? {
        get { return internalJson["description"].string }
        set { internalJson["description"].string = newValue }
    }

    /// Optional. Chat invite link, for supergroups and channel chats. Returned only in getChat.
    public var inviteLink: String? {
        get { return internalJson["invite_link"].string }
        set { internalJson["invite_link"].string = newValue }
    }

    /// Optional. Pinned message, for supergroups and channel chats. Returned only in getChat.
    public var pinnedMessage: Message? {
        get {
            let value = internalJson["pinned_message"]
            return value.isNullOrUnknown ? nil : Message(internalJson: value)
        }
        set {
            internalJson["pinned_message"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. For supergroups, name of group sticker set. Returned only in getChat.
    public var stickerSetName: String? {
        get { return internalJson["sticker_set_name"].string }
        set { internalJson["sticker_set_name"].string = newValue }
    }

    /// Optional. True, if the bot can change the group sticker set. Returned only in getChat.
    public var canSetStickerSet: Bool? {
        get { return internalJson["can_set_sticker_set"].bool }
        set { internalJson["can_set_sticker_set"].bool = newValue }
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
