// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// Represents a link to an animated GIF file. By default, this animated GIF file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinequeryresultgif>

public struct InlineQueryResultGif: JsonConvertible, InternalJsonConvertible {
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

    /// Type of the result, must be gif
    public var typeString: String {
        get { return internalJson["type"].stringValue }
        set { internalJson["type"].stringValue = newValue }
    }

    /// Unique identifier for this result, 1-64 bytes
    public var id: String {
        get { return internalJson["id"].stringValue }
        set { internalJson["id"].stringValue = newValue }
    }

    /// A valid URL for the GIF file. File size must not exceed 1MB
    public var gifUrl: String {
        get { return internalJson["gif_url"].stringValue }
        set { internalJson["gif_url"].stringValue = newValue }
    }

    /// Optional. Width of the GIF
    public var gifWidth: Int? {
        get { return internalJson["gif_width"].int }
        set { internalJson["gif_width"].int = newValue }
    }

    /// Optional. Height of the GIF
    public var gifHeight: Int? {
        get { return internalJson["gif_height"].int }
        set { internalJson["gif_height"].int = newValue }
    }

    /// Optional. Duration of the GIF
    public var gifDuration: Int? {
        get { return internalJson["gif_duration"].int }
        set { internalJson["gif_duration"].int = newValue }
    }

    /// URL of the static thumbnail for the result (jpeg or gif)
    public var thumbUrl: String {
        get { return internalJson["thumb_url"].stringValue }
        set { internalJson["thumb_url"].stringValue = newValue }
    }

    /// Optional. Title for the result
    public var title: String? {
        get { return internalJson["title"].string }
        set { internalJson["title"].string = newValue }
    }

    /// Optional. Caption of the GIF file to be sent, 0-200 characters
    public var caption: String? {
        get { return internalJson["caption"].string }
        set { internalJson["caption"].string = newValue }
    }

    /// Optional. Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    public var parseModeString: String? {
        get { return internalJson["parse_mode"].string }
        set { internalJson["parse_mode"].string = newValue }
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

    /// Optional. Content of the message to be sent instead of the GIF animation
    public var inputMessageContent: InputMessageContent? {
        get {
            fatalError("Not implemented")
        }
        set {
            internalJson["input_message_content"] = JSON(newValue?.json ?? JSON.null)
        }
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
