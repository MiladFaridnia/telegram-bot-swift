// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation

public extension TelegramBot {
    typealias SendDocumentCompletion = (result: Message?, error: DataTaskError?) -> ()

    /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - document: File to send. You can either pass a file_id as String to resend a file that is already on the Telegram servers, or upload a new file using multipart/form-data.
    ///     - caption: Document caption (may also be used when resending documents by file_id), 0-200 characters
    ///     - disable_notification: Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to hide reply keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#senddocument>
    @discardableResult
    public func sendDocumentSync(
            chat_id: ChatId,
            document: FileInfo,
            caption: String? = nil,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: ReplyMarkup? = nil,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("sendDocument", defaultParameters["sendDocument"], parameters, [
            "chat_id": chat_id,
            "document": document,
            "caption": caption,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup])
    }

    /// Use this method to send general files. On success, the sent Message is returned. Bots can currently send files of any type of up to 50 MB in size, this limit may be changed in the future.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - document: File to send. You can either pass a file_id as String to resend a file that is already on the Telegram servers, or upload a new file using multipart/form-data.
    ///     - caption: Document caption (may also be used when resending documents by file_id), 0-200 characters
    ///     - disable_notification: Sends the message silently. iOS users will not receive a notification, Android users will receive a notification with no sound.
    ///     - reply_to_message_id: If the message is a reply, ID of the original message
    ///     - reply_markup: Additional interface options. A JSON-serialized object for an inline keyboard, custom reply keyboard, instructions to hide reply keyboard or to force a reply from the user.
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#senddocument>
    public func sendDocumentAsync(
            chat_id: ChatId,
            document: FileInfo,
            caption: String? = nil,
            disable_notification: Bool? = nil,
            reply_to_message_id: Int? = nil,
            reply_markup: ReplyMarkup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: SendDocumentCompletion? = nil) {
        return requestAsync("sendDocument", defaultParameters["sendDocument"], parameters, [
            "chat_id": chat_id,
            "document": document,
            "caption": caption,
            "disable_notification": disable_notification,
            "reply_to_message_id": reply_to_message_id,
            "reply_markup": reply_markup],
            queue: queue, completion: completion)
    }
}

