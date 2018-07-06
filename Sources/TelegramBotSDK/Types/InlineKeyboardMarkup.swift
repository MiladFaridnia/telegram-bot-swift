// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents an inline keyboard that appears right next to the message it belongs to.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#inlinekeyboardmarkup>

public struct InlineKeyboardMarkup: JsonConvertible, InternalJsonConvertible {
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

    /// Array of button rows, each represented by an Array of InlineKeyboardButton objects
    public var inlineKeyboard: [[InlineKeyboardButton]] {
        get { return internalJson["inline_keyboard"].twoDArrayValue() }
        set {
            var rowsJson = [JSON]()
            rowsJson.reserveCapacity(newValue.count)
            for row in newValue {
                var colsJson = [JSON]()
                colsJson.reserveCapacity(row.count)
                for col in row {
                    let json = col.internalJson
                    colsJson.append(json)
                }
                rowsJson.append(JSON(colsJson))
            }
            internalJson["inline_keyboard"] = JSON(rowsJson)
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
