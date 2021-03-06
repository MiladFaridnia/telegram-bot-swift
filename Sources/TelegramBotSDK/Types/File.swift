// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a file ready to be downloaded. The file can be downloaded via the link https://api.telegram.org/file/bot<token>/<file_path>. It is guaranteed that the link will be valid for at least 1 hour. When the link expires, a new one can be requested by calling getFile.
/// Maximum file size to download is 20 MB
///
/// - SeeAlso: <https://core.telegram.org/bots/api#file>

public struct File: JsonConvertible, InternalJsonConvertible {
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

    /// Unique identifier for this file
    public var fileId: String {
        get { return internalJson["file_id"].stringValue }
        set { internalJson["file_id"].stringValue = newValue }
    }

    /// Optional. File size, if known
    public var fileSize: Int? {
        get { return internalJson["file_size"].int }
        set { internalJson["file_size"].int = newValue }
    }

    /// Optional. File path. Use https://api.telegram.org/file/bot<token>/<file_path> to get the file.
    public var filePath: String? {
        get { return internalJson["file_path"].string }
        set { internalJson["file_path"].string = newValue }
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
