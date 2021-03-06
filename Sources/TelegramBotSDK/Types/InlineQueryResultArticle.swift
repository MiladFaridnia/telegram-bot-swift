// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// Represents a link to an article or web page.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultarticle>

public struct InlineQueryResultArticle: JsonConvertible, InternalJsonConvertible {
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

    /// Type of the result, must be article
    public var typeString: String {
        get { return internalJson["type"].stringValue }
        set { internalJson["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 Bytes
    public var id: String {
        get { return internalJson["id"].stringValue }
        set { internalJson["id"].stringValue = newValue }
    }

    /// Title of the result
    public var title: String {
        get { return internalJson["title"].stringValue }
        set { internalJson["title"].stringValue = newValue }
    }

    /// Content of the message to be sent
    public var inputMessageContent: InputMessageContent {
        get {
            fatalError("Not implemented")
        }
        set {
            internalJson["input_message_content"] = JSON(newValue.json)
        }
    }

    /// Optional. Inline keyboard attached to the message
    public var replyMarkup: InlineKeyboardMarkup? {
        get {
            let value = internalJson["reply_markup"]
            return value.isNullOrUnknown ? nil : InlineKeyboardMarkup(internalJson: value)
        }
        set {
            internalJson["reply_markup"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. URL of the result
    public var url: String? {
        get { return internalJson["url"].string }
        set { internalJson["url"].string = newValue }
    }

    /// Optional. Pass True, if you don't want the URL to be shown in the message
    public var hideUrl: Bool? {
        get { return internalJson["hide_url"].bool }
        set { internalJson["hide_url"].bool = newValue }
    }

    /// Optional. Short description of the result
    public var description: String? {
        get { return internalJson["description"].string }
        set { internalJson["description"].string = newValue }
    }

    /// Optional. Url of the thumbnail for the result
    public var thumbUrl: String? {
        get { return internalJson["thumb_url"].string }
        set { internalJson["thumb_url"].string = newValue }
    }

    /// Optional. Thumbnail width
    public var thumbWidth: Int? {
        get { return internalJson["thumb_width"].int }
        set { internalJson["thumb_width"].int = newValue }
    }

    /// Optional. Thumbnail height
    public var thumbHeight: Int? {
        get { return internalJson["thumb_height"].int }
        set { internalJson["thumb_height"].int = newValue }
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
